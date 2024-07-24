local Scanner = {}

function Scanner.spiral_next(input)
  local x = input.x
  local y = input.y
  local output = table.deepcopy(input)
  if x > y and x >= -y then
    output.y = y + 1
  elseif -y >= -x and -y > x then
    output.x = x + 1
  elseif -x > y and -x > -y then
    output.y = y - 1
  elseif y >= -x and y > x then
    output.x = x - 1
  else
    output.x = x - 1
  end
  return output
end

function Scanner.zigzag_next(input, y_limit)
  local x = input.x
  local y = input.y
  local output = table.deepcopy(input)
  if y > -y_limit then
    output.y = y - 1
  elseif x >= 0 then
    output.x = -x - 1
    output.y = y_limit
  else
    output.x = -x
    output.y = y_limit
  end
  return output
end

function Scanner.chart_position(force, surface, position)
  force.chart(surface, {
    {
      x = position.x*32,
      y = position.y*32
    },
    {
      x = (position.x+0.5)*32, -- +1 actually scans 4 chunks
      y = (position.y+0.5)*32 -- +1 actually scans 4 chunks
    }
  })
end

function Scanner.get_max_range_for_zone(zone)
  local max_range = settings.global["se-scan-max-range"].value
  if zone.radius then
    max_range = math.min(max_range, zone.radius)
  end
  -- Chunk limit is 32767 but charting a chunk generates the next 2 chunks
  max_range = math.min(max_range, 32764 * 32)
  return max_range
end

function Scanner.cursor_outside_range(cursor, max_range)
  return (math.abs(cursor.x) - 1.5)*32 > max_range
    or (math.abs(cursor.y) - 1.5)*32 > max_range
end

function Scanner.process_force_scanning(forcedata, force)
  if forcedata.is_scanning and forcedata.scanning_zone then
    local y_limit = nil
    if forcedata.scanning_zone.type == "asteroid-belt" or forcedata.scanning_zone.type == "orbit" then
      y_limit = 8 -- changes spiral pattern to different method
      if not forcedata.scanning_cursor  then
        forcedata.scanning_cursor = {x=0,y=16}
      end
    else
      if not forcedata.scanning_cursor  then
        forcedata.scanning_cursor = {x=0,y=0}
      end
    end
    local surface = Zone.get_surface(forcedata.scanning_zone)
    if not surface then
      return Scanner.stop_scanning(force.name)
    end
    local max_range = Scanner.get_max_range_for_zone(forcedata.scanning_zone)
    local search_budget = settings.global["se-scan-search-budget"].value -- 1000
    local searched = 0
    local chart_budget = settings.global["se-scan-chart-budget"].value -- 10
    local charted = 0
    local cursor = table.deepcopy(forcedata.scanning_cursor)
    while searched < search_budget and charted < chart_budget do
      if Scanner.cursor_outside_range(forcedata.scanning_cursor, max_range) then
        if forcedata.scanning_zone.radius and forcedata.scanning_zone.radius < settings.global["se-scan-max-range"].value then
          force.print({"space-exploration.scan-complete-body", forcedata.scanning_zone.name})
        else
          force.print({"space-exploration.scan-complete-range", forcedata.scanning_zone.name, math.floor(max_range)})
        end
        return Scanner.stop_scanning(force.name)
      end

      searched = searched + 1
      if (not forcedata.scanning_zone.radius) or (Util.vector_length(cursor) - 1.5)*32 < forcedata.scanning_zone.radius then
        if force.is_chunk_charted(surface, cursor) then
          forcedata.scanning_cursor = cursor
        else
          charted = charted + 1
          Scanner.chart_position(force, surface, cursor)
        end
      else -- outside radius
        if charted == 0 then -- skip ahead
          forcedata.scanning_cursor = cursor
        end
      end
      if y_limit then
        cursor = Scanner.zigzag_next(cursor, y_limit)
      else
        cursor = Scanner.spiral_next(cursor)
      end
    end

    forcedata.scanning_cursor = cursor

    if settings.global["se-scan-alert-interval"].value > 0 then
      if game.tick % (60 * settings.global["se-scan-alert-interval"].value) == 0 then
        force.print({"space-exploration.scan-progress-update", forcedata.scanning_zone.name, cursor.x, cursor.y})
      end
    end

  end
end

function Scanner.process_forces_scanning()
  for force_name, forcedata in pairs(global.forces) do
    local force = game.forces[force_name]
    if not force then
      global.forces[force_name] = nil
    else
      Scanner.process_force_scanning(forcedata, force)
    end
  end
end

function Scanner.process_chart_tag_buffer()
  if global.chart_tag_buffer then
    local tags_remaining = 0
    for _, tag in pairs(global.chart_tag_buffer) do
      local surface = tag.surface
      local force_name = tag.force_name
      local force = game.forces[force_name]
      if force then
        local chart_tag = force.add_chart_tag(surface, {
          icon = {type = tag.icon_type, name = tag.icon_name},
          position = tag.position,
          text = tag.text
        })
        if chart_tag then
          global.chart_tag_buffer[_] = nil
        else
          tags_remaining = tags_remaining + 1
        end
      else
        global.chart_tag_buffer[_] = nil
      end
    end
    if tags_remaining == 0 then
      -- cleanup
      global.chart_tag_buffer = nil
      global.chart_tag_next_id = nil
    end
  end
end

function Scanner.on_nth_tick_60()
  Scanner.process_forces_scanning()
  Scanner.process_chart_tag_buffer()
end
Event.addListener("on_nth_tick_60", Scanner.on_nth_tick_60)

function Scanner.start_scanning(force_name, zone)
  if not zone.surface_index then Zone.create_surface(zone) end

  local force = game.forces[force_name]
  force.cancel_charting()

  local forcedata = global.forces[force_name]
  forcedata.is_scanning = true
  forcedata.scanning_zone = zone
  forcedata.scanning_cursor = nil
  for _, player in pairs(game.connected_players) do
    Zonelist.gui_update_selected(player.index)
    MapView.gui_update(player)
  end
end

function Scanner.stop_scanning(force_name)
  local force = game.forces[force_name]
  force.cancel_charting()

  local forcedata = global.forces[force_name]
  forcedata.is_scanning = false
  forcedata.scanning_zone = nil
  forcedata.scanning_cursor = nil
  for _, player in pairs(game.connected_players) do
    Zonelist.gui_update_selected(player.index)
    MapView.gui_update(player)
  end
end

return Scanner

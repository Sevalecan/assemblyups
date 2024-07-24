local Zonelist = {}
--[[
Zonelist is an informatron style popup in the middle of the screen.
It lists zones and has a starmap link.
If you choose to view a zone it puts you into remote view mode.
]]--

Zonelist.name_gui_root = mod_prefix.."zonelist_main"
Zonelist.name_shortcut = mod_prefix.."universe-explorer"
Zonelist.name_event = mod_prefix.."universe-explorer"

Zonelist.name_button_close = "zonelist_button_close"
Zonelist.name_button_starmap = "zonelist_button_starmap"
Zonelist.name_button_view_zone = "zonelist_button_view_zone"
Zonelist.name_button_overhead_explorer = mod_prefix .. "overhead_explorer"
Zonelist.name_setting_overhead_explorer = mod_prefix .. "show-overhead-button-universe-explorer"

Zonelist.name_zonelist_headings_row = "zonelist_headings_row"
Zonelist.name_zonelist_scroll = "zonelist_scroll"
Zonelist.name_zonelist_search = "zonelist_search"
Zonelist.name_zonelist_search_clear = "zonelist_search_clear"
Zonelist.name_zonelist_filters = "zonelist_filters"
Zonelist.name_zonelist_priority_toggle = "zonelist_priority_toggle"
Zonelist.name_zonelist_priority_threshold_field = "zonelist_priority_threshold_field"
Zonelist.name_zonelist_priority_threshold_plus_button = "zonelist_priority_threshold_plus_button"
Zonelist.name_zonelist_priority_threshold_minus_button = "zonelist_priority_threshold_minus_button"
Zonelist.name_zone_content_title = "zone_content_title"
Zonelist.name_zone_content_priority_flow = "zone_content_priority_flow"
Zonelist.name_zone_content_frame = "zone_content_frame"
Zonelist.name_zone_content_pane = "zone_content_pane"
Zonelist.name_zone_content_preview_frame = "zone_content_preview_frame"
Zonelist.name_zone_priority_field = "zone_priority_field"
Zonelist.name_zone_priority_plus_button = "zone_priority_plus_button"
Zonelist.name_zone_priority_minus_button = "zone_priority_minus_button"
Zonelist.name_zone_trim_surface_button = "zone_trim_surface_button"
Zonelist.name_zone_delete_surface_button = "zone_delete_surface_button"
Zonelist.name_zone_scan_surface_button = "zone_scan_surface_button"
Zonelist.name_zone_confirm_extinction_button = "zone_confirm_extinction_button"

Zonelist.name_color_priority_positive = {r=50/255, g=250/255, b=50/255}
Zonelist.name_color_priority_neutral = {r=255/255, g=174/255, b=0/255}
Zonelist.name_color_priority_negative = {r=250/255, g=20/255, b=20/255}

Zonelist.min_bar_brightness = 200

Zonelist.path_zonelist_priority_threshold = {"main_table", "main_left_flow", "title_table", "filter_search_flow", "zonelist_priority_container", Zonelist.name_zonelist_priority_threshold_field}
Zonelist.path_zonelist_search = {"main_table", "main_left_flow", "title_table", "filter_search_flow", Zonelist.name_zonelist_search}
Zonelist.path_zonelist_headings_row = {"main_table", "main_left_flow", "zonelist_frame", Zonelist.name_zonelist_headings_row}
Zonelist.path_zonelist_scroll = {"main_table", "main_left_flow", "zonelist_frame", Zonelist.name_zonelist_scroll}
Zonelist.path_zone_content_title = {"main_table", "main_right_flow", "zone_content_frame", "zone_content_title_frame", "title_table", Zonelist.name_zone_content_title}
Zonelist.path_zone_content_priority_flow = {"main_table", "main_right_flow", "zone_content_frame", "zone_content_title_frame", "title_table", Zonelist.name_zone_content_priority_flow}
Zonelist.path_zone_content_priority_field = {"main_table", "main_right_flow", "zone_content_frame", "zone_content_title_frame", "title_table", Zonelist.name_zone_content_priority_flow, Zonelist.name_zone_priority_field}
Zonelist.path_zone_content_pane = {"main_table", "main_right_flow", "zone_content_frame", Zonelist.name_zone_content_frame, Zonelist.name_zone_content_pane}
Zonelist.path_zone_content_preview_frame = {"main_table", "main_right_flow", "zone_content_frame", Zonelist.name_zone_content_preview_frame}

Zonelist.priority_max = 999

Zonelist.nb_satellites_to_unlock = 2

---Gets the zone or spacehip selected by a player, or the zone they are currently on if none.
---@param player_index uint Player index
---@return AnyZoneType|SpaceshipType zone
function Zonelist.get_selected_zone_or_current(player_index)
  local player = game.players[player_index]
  local playerdata = get_make_playerdata(player)
  local zone = playerdata.zonelist_selected_zone
  if not zone then
    zone = Zone.from_surface(player.surface)
  end
  return zone
end

---Gets the root gui element of the Universe Explorer if it's open and the player is connected.
---@param player_index uint Player index
---@return LuaGuiElement window
function Zonelist.get_main_window(player_index)
  local player = game.players[player_index]
  if player and player.connected then
    return player.gui.screen[Zonelist.name_gui_root]
  end
end

---Closes the Universe Explorer, empties `zonelist_zone_rows` from (now destroyed) gui elements.
---@param player_index uint Player index
function Zonelist.gui_close(player_index)
  local window = Zonelist.get_main_window(player_index)
  if window then window.destroy() end

  local playerdata = get_make_playerdata(game.players[player_index])
  playerdata.zonelist_zone_rows = {}
end

---Opens the Universe Explorer for a specified player.
---@param player_index uint Player index
function Zonelist.gui_open(player_index)
  local player = game.players[player_index]
  if not player and player.connected then return end

  if not Zonelist.is_unlocked(player) then return player.print(Zonelist.unlock_requirement_string(player)) end

  local gui = player.gui.screen
  close_own_guis(player)
  Zonelist.gui_close(player_index)
  --gui.clear()
  local playerdata = get_make_playerdata(player)
  playerdata.zonelist_filter_excludes = playerdata.zonelist_filter_excludes or {}
  playerdata.zonelist_priority_threshold = playerdata.zonelist_priority_threshold or 0
  local forcedata = global.forces[player.force.name]

  local root = gui.add{ type = "frame", name = Zonelist.name_gui_root, direction="vertical"}
  root.style.bottom_padding = 10
  root.auto_center = true

  player.opened = root

  if not (root and root.valid) then return end -- setting player.opened can cause other scripts to delete UIs
  local main_table = root.add{type="table", name="main_table", column_count=2, draw_horizontal_lines=false}
  main_table.style.horizontally_stretchable = true
  main_table.style.column_alignments[1] = "left" -- title, search, zone list table
  main_table.style.column_alignments[2] = "right" -- starmap, close, selected zone info

  local main_left_flow = main_table.add{type = "flow", name="main_left_flow", direction = "vertical"}
  local main_right_flow = main_table.add{type = "flow", name="main_right_flow", direction = "vertical"}
  main_left_flow.style.right_margin = 10

  local title_table = main_left_flow.add{type="table", name="title_table", column_count=2, draw_horizontal_lines=false}
  title_table.drag_target = root
  title_table.style.horizontally_stretchable = true
  title_table.style.column_alignments[1] = "left" -- name
  title_table.style.column_alignments[2] = "right" -- search

  -- LEFT TOP
  local title_frame = title_table.add{type="frame", name="title_frame", caption={"space-exploration.zonelist-window-title"}, style="informatron_title_frame", ignored_by_interaction = true}


  -- LEFT TOP (right aligned)
  local filter_search_container = title_table.add{type="flow", name="filter_search_flow", direction="horizontal"}

  local filters_container = filter_search_container.add{type="flow", name=Zonelist.name_zonelist_filters, direction="horizontal"}
  for _, zone_type in pairs({"star", "planet", "planet-orbit", "moon", "moon-orbit", "asteroid-belt", "asteroid-field", "anomaly", "spaceship"}) do
    if zone_type ~= "anomaly" or Zone.is_visible_to_force(Zone.from_name("Foenestra"), player.force.name) then
      local style = "se_zone_list_filter_down"
      if playerdata.zonelist_filter_excludes[zone_type] then
        style = "se_zone_list_filter"
      end
      local button = filters_container.add{type = "sprite-button", name=zone_type, sprite="virtual-signal/se-"..zone_type, tooltip={"space-exploration.zonelist_filter_"..zone_type}, style=style}
    end
  end
  local zonelist_priority_container = filter_search_container.add{type="flow", name="zonelist_priority_container", direction="horizontal"}
  zonelist_priority_container.style.left_margin = 30
  local priority_toggle = zonelist_priority_container.add{
    type="sprite-button",
    name=Zonelist.name_zonelist_priority_toggle,
    sprite="virtual-signal/"..mod_prefix.."accolade",
    tooltip={"space-exploration.zonelist_priority_threshold_toggle"},
    style=playerdata.zonelist_filter_excludes[Zonelist.name_zonelist_priority_toggle] and "se_priority_toggle_button_down" or "se_priority_toggle_button"}

  local priority_threshold_field = zonelist_priority_container.add{
    type="textfield",
    name=Zonelist.name_zonelist_priority_threshold_field,
    numeric=true,
    allow_negative=true,
    lose_focus_on_confirm=true,
    tooltip={"space-exploration.zonelist_priority_threshold_field"}}
  priority_threshold_field.text = "" .. playerdata.zonelist_priority_threshold
  priority_threshold_field.style.width = 40
  priority_threshold_field.style.height = 30
  priority_threshold_field.style.top_margin = -4
  priority_threshold_field.style.left_margin = -4
  priority_threshold_field.style.horizontal_align = "center"
  priority_threshold_field.style.padding = 0

  local priority_buttons_flow = zonelist_priority_container.add{
    type="flow",
    name="priority_buttons_flow",
    direction = "vertical"}
  priority_buttons_flow.style.margin = -1

  local plus = priority_buttons_flow.add{
    type="button",
    name=Zonelist.name_zonelist_priority_threshold_plus_button,
    caption="▲",
    style="zonelist_priority_button",
    tooltip={"space-exploration.zonelist_priority_threshold_plus_button"}}
  plus.style.margin = -2
  plus.style.padding = 0
  plus.style.width = 20
  plus.style.height = 15
  plus.style.font = "default-tiny-bold"
  plus.style.horizontal_align = "center"

  local minus = priority_buttons_flow.add{
    type="button",
    name=Zonelist.name_zonelist_priority_threshold_minus_button,
    caption="▼",
    style="zonelist_priority_button",
    tooltip={"space-exploration.zonelist_priority_threshold_minus_button"}}
  minus.style.margin = -2
  minus.style.padding = 0
  minus.style.width = 20
  minus.style.height = 15
  minus.style.font = "default-tiny-bold"
  minus.style.horizontal_align = "center"

  local zonelist_search = filter_search_container.add{ type="textfield", name=Zonelist.name_zonelist_search}
  zonelist_search.style.width = 150
  zonelist_search.style.height = 30
  zonelist_search.style.top_margin = -4
  zonelist_search.style.left_margin = 30
  local search_button = filter_search_container.add{ type = "sprite-button", name=Zonelist.name_zonelist_search_clear, sprite="se-search-close-white", hovered_sprite="se-search-close-black", clicked_sprite="se-search-close-black", tooltip={"space-exploration.clear-search"}, style="informatron_close_button"}
  search_button.style.left_margin = 5
  search_button.style.height = 28
  search_button.style.width = 28
  search_button.style.top_margin = -2

  -- LEFT BOTTOM
  local zonelist_frame = main_left_flow.add{type="frame", name="zonelist_frame", style="informatron_inside_deep_frame", direction="vertical"}
  zonelist_frame.style.horizontally_stretchable = true
  zonelist_frame.style.minimal_height = 300
  local zonelist_headings_row = zonelist_frame.add{type="flow", name=Zonelist.name_zonelist_headings_row, direction="horizontal"}
  local zonelist_scroll = zonelist_frame.add{type="scroll-pane", name=Zonelist.name_zonelist_scroll, direction="vertical", style="zonelist_rows_pane"}

  -- TODO: Only shof if zones list is small
  if ((not forcedata.satellites_launched) or forcedata.satellites_launched < 19) and (not global.debug_view_all_zones) then
    local instruction = main_left_flow.add{type = "label", name="instruction", caption={"space-exploration.remote-view-instruction"}}
    instruction.style.single_line  = false
    instruction.style.horizontally_stretchable = true
  end


  --RIGHT TOP
  local title_table = main_right_flow.add{type="table", name="title_table", column_count=2, draw_horizontal_lines=false}
  title_table.drag_target = root
  title_table.style.horizontally_stretchable = true
  title_table.style.column_alignments[1] = "left" -- blank
  title_table.style.column_alignments[2] = "right" -- starmap, close

  local title_frame = title_table.add{type="frame", name="title_frame", caption=" ", style="informatron_title_frame", direction="horizontal", ignored_by_interaction = true}
  title_frame.style.left_margin = -18

  local right_flow = title_table.add{type="flow", name="title_flow_right", direction="horizontal"}
  local starmap = right_flow.add{type="button", name=Zonelist.name_button_starmap,
    caption={"space-exploration.simple-a-b-space", "[img=se-map-gui-starmap]", { "space-exploration.interstellar-map" } },
    style="informatron_close_button", tooltip={"space-exploration.interstellar-map"}}
  starmap.style.right_margin = 6
  starmap.style.maximal_width = 200
  starmap.style.maximal_height = 32
  starmap.style.padding = 0
  starmap.style.left_padding = 5
  starmap.style.right_padding = 5

  local close = right_flow.add{type="sprite-button", name=Zonelist.name_button_close, sprite = "utility/close_white", style="informatron_close_button"}
  close.style.width = 28
  close.style.height = 28

  --RIGHT Upper MIDDLE
  local zone_content_frame = main_right_flow.add{type="flow", name="zone_content_frame", direction="vertical"}
  local zone_content_title_frame = zone_content_frame.add{type="frame", name="zone_content_title_frame", style="informatron_content_title"}
  zone_content_title_frame.style.horizontally_stretchable = true
  zone_content_title_frame.style.margin = 0
  zone_content_title_frame.style.top_padding = 0
  zone_content_title_frame.style.bottom_padding = 0
  zone_content_title_frame.style.right_padding = 0
  zone_content_title_frame.style.left_margin = -1
  local zone_content_title_table = zone_content_title_frame.add{type="table", name="title_table", column_count=2, draw_horizontal_lines=false, draw_vertical_lines=false}
  zone_content_title_table.style.horizontally_stretchable = true
  zone_content_title_table.style.column_alignments[1] = "left" -- name
  zone_content_title_table.style.column_alignments[2] = "right" -- priority
  local zone_content_title = zone_content_title_table.add{type="label", name=Zonelist.name_zone_content_title, caption=" ", style="heading_2_label"}
  zone_content_title.style.horizontally_stretchable = true
  zone_content_title.style.margin = 0
  zone_content_title.style.padding = 0
  --zone_content_title.style.width = 200
  local zone_content_priority_flow = zone_content_title_table.add{type="flow", name=Zonelist.name_zone_content_priority_flow, direction="horizontal"} -- icon, -, number, +
  zone_content_priority_flow.style.horizontal_align = "right"
  zone_content_priority_flow.style.vertical_align = "center"
  zone_content_priority_flow.style.right_padding = 0
  --zone_content_priority_flow.style.width = 200

  Zonelist.gui_create_zone_content(player, zone_content_frame)

  Zonelist.gui_update(player_index)
end

function Zonelist.gui_create_zone_content(player, parent)
  local is_zone_preview_enabled = settings.get_player_settings(player)["se-show-zone-preview"].value

  local zone_content_frame = parent.add{type="frame", name=Zonelist.name_zone_content_frame, style="informatron_inside_deep_frame"}
  local zone_content_pane = zone_content_frame.add{type="scroll-pane", name=Zonelist.name_zone_content_pane, vertical_scroll_policy="always", style="zonelist_content_pane"}
  if not is_zone_preview_enabled then
    zone_content_pane.style.minimal_height = 600
    zone_content_pane.style.maximal_height = 900
  end

  --RIGHT BOTTOM
  if is_zone_preview_enabled then
    local zone_content_preview_frame = parent.add{type="frame", name=Zonelist.name_zone_content_preview_frame, style="informatron_inside_deep_frame"}
    zone_content_preview_frame.style.width = 300
    zone_content_preview_frame.style.height = 300
    zone_content_preview_frame.style.top_margin = 10
  end

  --RIGHT BOTTOM
  local zone_view_button = parent.add{type="button", name=Zonelist.name_button_view_zone, style="confirm_button", caption={"space-exploration.zonelist-view-surface"}, tooltip={"space-exploration.zonelist-view-surface"}}
  zone_view_button.style.top_margin = 10
  zone_view_button.style.horizontally_stretchable = true
  if not RemoteView.is_unlocked(player) then
      zone_view_button.enabled = false
      zone_view_button.tooltip = {"space-exploration.remote-view-requires-satellite"}
  end
end

function Zonelist.is_unlocked_force(force_name)
  return global.debug_view_all_zones or (global.forces[force_name] and global.forces[force_name].satellites_launched >= Zonelist.nb_satellites_to_unlock)
end

function Zonelist.is_unlocked(player)
  return Zonelist.is_unlocked_force(player.force.name)
end

function Zonelist.unlock_requirement_string(player)
  return {"space-exploration.universe-explorer-requires-satellite", Zonelist.nb_satellites_to_unlock - global.forces[player.force.name].satellites_launched}
end

function Zonelist.gui_update(player_index) -- only call when something changed
  Zonelist.gui_update_list(player_index)
  Zonelist.gui_update_selected(player_index)
end

---Restores the default row style for a zone and its child elements when a zone selection is made.
---@param player_index uint Player index
function Zonelist.gui_restore_row_style(player_index)
  local window = Zonelist.get_main_window(player_index)
  if not window then return end

  local zonelist_scroll = util.get_gui_element(window, Zonelist.path_zonelist_scroll)
  if not zonelist_scroll then return end

  local zone = Zonelist.get_selected_zone_or_current(player_index) or Zone.get_default()
  local row = Zonelist.find_row_for_zone(player_index, zone)

  if row then
    row.style = "zonelist_row_button"
    if row["row_flow"] then
      for _, child in pairs(row["row_flow"].children) do
        if child.name ~= "cell_priority" then
          child.style.font_color = {r=1, g=1, b=1}
        end
      end
    end
  end
end

function Zonelist.gui_update_selected(player_index) -- only call when something changed
  local player = game.players[player_index]
  if not player and player.connected then return end

  local window = Zonelist.get_main_window(player_index)
  if not window then return end

  local force_name = player.force.name
  local forcedata = global.forces[force_name]
  local playerdata = get_make_playerdata(player)

  -- Get selected zone, with some backup options
  local selected_zone = playerdata.zonelist_selected_zone
  if not selected_zone then selected_zone = Zone.from_surface(player.surface) end
  if not selected_zone and forcedata and forcedata.homeworld_index then
    selected_zone = Zone.from_zone_index(forcedata.homeworld_index)
  end
  if not selected_zone then selected_zone = Zone.get_default() end
  playerdata.zonelist_selected_zone = selected_zone

  local zone_content_title = util.get_gui_element(window, Zonelist.path_zone_content_title)
  local zone_content_priority_flow = util.get_gui_element(window, Zonelist.path_zone_content_priority_flow)

  if selected_zone then
    local zone = selected_zone
    local row = Zonelist.find_row_for_zone(player_index, zone)
    if row then
      row.style = "zonelist_row_button_selected"
      if row["row_flow"] then
        for _, child in pairs(row["row_flow"].children) do
          if child.name ~= "cell_priority" then
            child.style.font_color = {r=0,g=0,b=0}
          end
        end
      end
    end

    -- Title
    if zone_content_title then zone_content_title.caption = zone.name end
    -- Priority

    if zone_content_priority_flow then
      zone_content_priority_flow.tooltip={"space-exploration.priority-tooltip"}
      if not zone_content_priority_flow["priority_icon"] then
        zone_content_priority_flow.add{type="label", name="priority_icon", caption={"space-exploration.priority-icon"}, tooltip={"space-exploration.priority-tooltip"}}
      end
      if not zone_content_priority_flow[Zonelist.name_zone_priority_field] then
        local textfield = zone_content_priority_flow.add{type="textfield", name=Zonelist.name_zone_priority_field, style="zonelist_priority_textfield",
                                                         numeric = true, allow_negative = true, tooltip={"space-exploration.priority-tooltip"}
        }
        textfield.style.width = 30
        textfield.style.height = 30
        textfield.style.horizontal_align = "center"
        textfield.style.padding = 0
        textfield.style.margin = 0
        textfield.style.right_margin = 4
      end
      local priority = Zone.get_priority(zone, force_name)
      local textfield = zone_content_priority_flow[Zonelist.name_zone_priority_field]
      textfield.text = ""..priority
      if priority > 0 then
        textfield.style.font_color = Zonelist.name_color_priority_positive
      elseif priority < 0 then
        textfield.style.font_color = Zonelist.name_color_priority_negative
      else
        textfield.style.font_color = Zonelist.name_color_priority_neutral
      end
      if not zone_content_priority_flow["buttons_flow"] then
        local buttons_flow = zone_content_priority_flow.add{type="flow", name="buttons_flow", direction = "vertical", tooltip={"space-exploration.priority-tooltip"}}
        buttons_flow.style.margin = -1
      end
      if not zone_content_priority_flow["buttons_flow"][Zonelist.name_zone_priority_plus_button] then
        local plus = zone_content_priority_flow["buttons_flow"].add{type="button", name=Zonelist.name_zone_priority_plus_button,
                                                                    caption="▲", style="zonelist_priority_button", tooltip={"space-exploration.priority-tooltip"}}
        plus.style.margin = -2
        plus.style.padding = 0
        plus.style.width = 20
        plus.style.height = 20
        plus.style.font = "default-tiny-bold"
        plus.style.horizontal_align = "center"
      end
      if not zone_content_priority_flow["buttons_flow"][Zonelist.name_zone_priority_minus_button] then
        local minus = zone_content_priority_flow["buttons_flow"].add{type="button", name=Zonelist.name_zone_priority_minus_button,
                                                                     caption="▼", style="zonelist_priority_button", tooltip={"space-exploration.priority-tooltip"}}
        minus.style.margin = -2
        minus.style.padding = 0
        minus.style.width = 20
        minus.style.height = 20
        minus.style.font = "default-tiny-bold"
        minus.style.horizontal_align = "center"
      end
    end
  else
    if zone_content_title then zone_content_title.caption = " " end
    if zone_content_priority_flow then zone_content_priority_flow.clear() end
  end

  local zone_content_pane = util.get_gui_element(window, Zonelist.path_zone_content_pane)
  local zone_content_preview_frame = util.get_gui_element(window, Zonelist.path_zone_content_preview_frame)
  Zonelist.gui_update_zone_content(player, zone_content_pane, zone_content_preview_frame, selected_zone)
end

function Zonelist.gui_update_zone_content(player, zone_content_pane, zone_content_preview_frame, zone)
  -- IMPORTANT: this is used for the zonelist side bar AND the star maps zone popup
  local force_name = player.force.name
  local forcedata = global.forces[force_name]
  local playerdata = get_make_playerdata(player)
  local zone_force_assets = zone.type ~= "spaceship" and Zone.get_force_assets(force_name, zone.index) or nil

  if zone then
    -- zone content
    if zone_content_pane then
      zone_content_pane.clear()
      local zone_properties = zone_content_pane.add{type="table", name="zone_properties", column_count=2, draw_horizontal_lines=false}
      zone_properties.style.width = 260
      zone_properties.style.horizontally_stretchable = true
      zone_properties.style.column_alignments[1] = "left" -- name
      zone_properties.style.column_alignments[2] = "right" -- priority
      zone_properties.style.top_margin = -5
      zone_properties.style.bottom_margin = 5
      local label, value

      label = zone_properties.add{type="label", name="label_type", caption={"space-exploration.zone-tooltip-type"}}
      label.style.horizontally_stretchable = true
      label.style.font_color = {r=0.5,g=0.5,b=0.5}
      value = zone_properties.add{type="label", name="value_type", caption={"", "[img=", Zone.get_icon(zone), "] ", Zone.type_title(zone)}}
      value.style.horizontal_align = "right"

      if zone.parent then
        label = zone_properties.add{type="label", name="label_parent", caption={"space-exploration.zone-tooltip-parent"}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_parent", caption=zone.parent.name}
        value.style.horizontal_align = "right"
      end

      if zone.radius then
        label = zone_properties.add{type="label", name="label_radius", caption={"space-exploration.zone-tooltip-radius"}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_radius", caption=string.format("%.0f",zone.radius)}
        value.style.horizontal_align = "right"
      end

      if Zone.is_solid(zone) then
        label = zone_properties.add{type="label", name="label_daynight", caption={"space-exploration.zone-tooltip-daynight"}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_daynight", caption=string.format("%.2f", zone.ticks_per_day/ 60 / 60 ).." minutes"}
        value.style.horizontal_align = "right"
      end


      if zone.type ~= "spaceship" then
        local interference_type = "radiation"
        if zone.type == "anomaly" then
          interference_type = "spacial-distortion"
        elseif Zone.is_solid(zone) then
          interference_type = "wind"
        end
        label = zone_properties.add{type="label", name="label_attrition", caption={"space-exploration.zone-tooltip-bot-attrition", {"space-exploration.attrition-type-"..interference_type}}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_attrition", caption=string.format("%.2f", zone.bot_attrition)}
        value.style.horizontal_align = "right"
      end

      if zone.type ~= "spaceship" then
        local threat = Zone.get_threat(zone)
        label = zone_properties.add{type="label", name="label_threat", caption={"space-exploration.zone-tooltip-threat"}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_threat", caption=string.format("%.0f", threat*100).."%"}
        value.style.horizontal_align = "right"

        local hazards = Zone.get_hazards(zone)
        if #hazards > 0 then
          local hazards_label = {"", "[img=utility/warning_icon] "}
          local hazards_tooltip = {""}
          for _, hazard in pairs(hazards) do
            table.insert(hazards_label, {"space-exploration.zone-hazard-" .. hazard})
            table.insert(hazards_label, ", ")
            table.insert(hazards_tooltip, {"space-exploration.zone-hazard-tooltip-" .. hazard})
            table.insert(hazards_tooltip, "\n")
          end
          -- Remove last comma and \n
          table.remove(hazards_label, #hazards_label)
          table.remove(hazards_tooltip, #hazards_tooltip)

          label = zone_properties.add{type="label", name="label_hazards", caption={"space-exploration.zone-tooltip-hazards"}}
          label.style.horizontally_stretchable = true
          label.style.font_color = {r=0.5,g=0.5,b=0.5}
          value = zone_properties.add{type="label", name="value_hazards", caption=hazards_label}
          value.style.horizontal_align = "right"
          value.tooltip = hazards_tooltip
        end
      end

      local origin = Zone.from_surface(player.surface)
      if (not origin) and playerdata and playerdata.character and playerdata.character.valid and playerdata.character.surface then
        origin = Zone.from_surface(playerdata.character.surface)
      end
      if origin and origin ~= zone then
        local delta_v = Zone.get_travel_delta_v(origin, zone)
        if delta_v > 0 then
          label = zone_properties.add{type="label", name="label_delta_v", caption={"space-exploration.zone-tooltip-delta-v", origin.name}}
          label.style.horizontally_stretchable = true
          label.style.font_color = {r=0.5,g=0.5,b=0.5}
          value = zone_properties.add{type="label", name="value_delta-v", caption=string.format("%.0f", delta_v)}
          value.style.horizontal_align = "right"
        end
      end

      if zone.type == "spaceship" then
        local spaceship = zone

        local closest = Zone.find_nearest_zone(
        spaceship.space_distortion,
        spaceship.stellar_position,
        spaceship.star_gravity_well,
        spaceship.planet_gravity_well)
        label = zone_properties.add{type="label", name="label_closest", caption={"space-exploration.zone-tooltip-closest"}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_closest", caption=closest and ("[img="..Zone.get_icon(closest) .. "] " .. closest.name)}
        value.style.horizontal_align = "right"

        local destination = Spaceship.get_destination_zone(spaceship)
        label = zone_properties.add{type="label", name="label_destination", caption={"space-exploration.zone-tooltip-destination"}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_destination", caption=destination and ("[img="..Zone.get_icon(destination) .. "] " .. destination.name)}
        value.style.horizontal_align = "right"

      end

      local solar = Zone.get_display_light_percent(zone)
      label = zone_properties.add{type="label", name="label_solar", caption={"space-exploration.zone-tooltip-solar"}}
      label.style.horizontally_stretchable = true
      label.style.font_color = {r=0.5,g=0.5,b=0.5}
      value = zone_properties.add{type="label", name="value_solar", caption=string.format("%.0f", solar*100).."%"}
      value.style.horizontal_align = "right"

      if is_debug_mode or (global.spaceships and table_size(global.spaceships) > 0) then
        label = zone_properties.add{type="label", name="label_signals", caption="Automation signal:"}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_signals", caption=""}
        value.style.horizontal_align = "right"
        value.caption = "[img="..Zone.get_icon(zone).."] "..zone.index
        value.tooltip = {"space-exploration.simple-a-b", {"virtual-signal-name."..Zone.get_signal_name(zone)}, " "..zone.index.."\nUsed for spaceship automation."}
      end

      -- arcosphere information
      if zone.type == "asteroid-field" and forcedata.zone_arcospheres then
        local arcos_collected = 0
        local arcos_launched = 0
        if forcedata.zone_arcospheres[zone.index] then
          arcos_collected = forcedata.zone_arcospheres[zone.index].arcospheres_collected
          arcos_launched = forcedata.zone_arcospheres[zone.index].arcosphere_collectors_launched
        end

        label = zone_properties.add{type="label", name="label_arcospheres", caption={"space-exploration.zone-tooltip-arcospheres"}}
        label.style.horizontally_stretchable = true
        label.style.font_color = {r=0.5,g=0.5,b=0.5}
        value = zone_properties.add{type="label", name="value_arcospheres", caption=""}
        value.style.horizontal_align = "right"
        value.caption = arcos_collected .. "/" .. arcos_launched
      end

      -- TODO: resources
      --for k = 0, 40, 1 do -- test scrollbar
      --  label = zone_properties.add{type="label", name="label_solar_"..k, caption={"space-exploration.zone-tooltip-solar"}}
      --end
      if zone.type ~= "spaceship" then
        if zone.type ~= "orbit" then
          local resources_flow = zone_content_pane.add{type="flow", name="resources_flow", direction="vertical"}
          local fsrs = {}
          local max_fsr = 0
          for resource_name, resource_settings in pairs(global.resources_and_controls.resource_settings) do
            if zone.controls[resource_name] then
              local fsr = Universe.estimate_resource_fsr(zone.controls[resource_name])
              if fsr > 0 then
                max_fsr = math.max(max_fsr, fsr)
                table.insert(fsrs, {name=resource_name, fsr=fsr})
              end
            end
          end
          table.sort(fsrs, function(a,b) return a.fsr > b.fsr end)
          local mapgen
          if zone.surface_index then mapgen = Zone.get_make_surface(zone).map_gen_settings end

          for i = 1, #fsrs, 1 do
            local resource_name = fsrs[i].name
            local tooltip = {"space-exploration.zonelist-resource-bar-tooltip", "[img=entity/"..resource_name.."]", {"entity-name."..resource_name}}
            if mapgen then
              table.insert(tooltip, string.format("%.0f", mapgen.autoplace_controls[resource_name].frequency * 100).."%")
              table.insert(tooltip, string.format("%.0f", mapgen.autoplace_controls[resource_name].size * 100).."%")
              table.insert(tooltip, string.format("%.0f", mapgen.autoplace_controls[resource_name].richness * 100).."%")
            else
              local frequency_multiplier = Zone.get_frequency_multiplier(zone)
              table.insert(tooltip, string.format("%.0f", zone.controls[resource_name].frequency * frequency_multiplier * 100).."%")
              table.insert(tooltip, string.format("%.0f", zone.controls[resource_name].size * 100).."%")
              table.insert(tooltip, string.format("%.0f", zone.controls[resource_name].richness * 100).."%")
            end
            if resource_name == mod_prefix.."cryonite" or resource_name == mod_prefix.."vulcanite" or resource_name == mod_prefix.."vitamelange" then
              tooltip[1] = "space-exploration.zonelist-resource-bar-tooltip-extended"
              table.insert(tooltip, {"space-exploration.resource-terrain-required-"..resource_name})
            end
            local row = resources_flow.add{type="flow", name=resource_name, direction="horizontal", tooltip = tooltip}
            row.style.top_margin = 4
            row.style.vertical_align = "center"
            local label = row.add{type="label", name="resource_icon", caption="[img=entity/"..resource_name.."]", tooltip=tooltip}
            local overlap = row.add{type="flow", name="resource_bar_overlap", direction="vertical"}
            local percent = math.pow(fsrs[i].fsr/max_fsr, 1/3)
            local progressbar = overlap.add{type="progressbar", name="resource_bar", value=percent, tooltip=tooltip, style="zonelist_progressbar"}
            progressbar.style.horizontally_stretchable = true
            progressbar.style.color = Zonelist.name_color_priority_neutral
            local proto = game.entity_prototypes[resource_name]
            if proto and proto.map_color then
              local color = proto.map_color
              local rgb = color.r + color.g + color.b
              if rgb < 150 then
                color.r = color.r + 1
                color.g = color.g + 1
                color.b = color.b + 1
                rgb = rgb + 3
              end
              --[[if rgb < 255 then
                local rgb_m = 255 / rgb
                color.r = math.min(255, color.r * rgb_m)
                color.g = math.min(255, color.g * rgb_m)
                color.b = math.min(255, color.b * rgb_m)
              end]]
              local rgb_max = math.max(color.r, math.max(color.g,color.b))
              if rgb_max < Zonelist.min_bar_brightness then
                local rgb_m = Zonelist.min_bar_brightness / rgb_max
                color.r = math.min(255, color.r * rgb_m)
                color.g = math.min(255, color.g * rgb_m)
                color.b = math.min(255, color.b * rgb_m)
              end
              progressbar.style.color = color
            end
            local label = overlap.add{type="label", name="resource_label", caption={"entity-name."..resource_name}, tooltip=tooltip}
            label.style.top_margin = -26
            label.style.left_padding = 8
            label.style.font = "default-bold"
            label.style.font_color = {}
          end
          if Zone.is_solid(zone) then
            local resources_disclaimer = resources_flow.add{type="label", name="resources_disclaimer", caption={"space-exploration.zonelist-resources-disclaimer"}, tooltip={"space-exploration.zonelist-resources-disclaimer-tooltip"}}
            resources_disclaimer.style.font_color = {r=0.5,g=0.5,b=0.5}
          end
        end

        -- flags
        local has_glyph = playerdata.track_glyphs and (zone.glyph ~= nil)
        local has_ruin = zone.interburbulator or zone.ruins
        local has_visited = playerdata.visited_zone and playerdata.visited_zone[zone.index]
        local has_launchpad = zone_force_assets and table_size(zone_force_assets.rocket_launch_pad_names) > 0 or false
        local has_landingpad = zone_force_assets and table_size(zone_force_assets.rocket_landing_pad_names) > 0 or false

        if has_glyph or has_visited or has_launchpad or has_landingpad or has_ruin then
          local label = zone_properties.add{type="label", name="label_flags", caption={"space-exploration.zone-tooltip-flags"}}
          label.style.horizontally_stretchable = true
          label.style.font_color = {r=0.5,g=0.5,b=0.5}
          local flags_flow = zone_properties.add{type="flow", name="flags_flow", direction="horizontal"}
          flags_flow.style.horizontal_align = "right"
          if has_visited then
            flags_flow.add{type="label", name="flag_visited", caption="[img=entity/character]", tooltip="Visited in person"}
          end
          if has_launchpad then
            flags_flow.add{type="label", name="flag_launchpad", caption="[img=entity/"..Launchpad.name_rocket_launch_pad.."]", tooltip={"entity-name."..Launchpad.name_rocket_launch_pad}}
          end
          if has_landingpad then
            flags_flow.add{type="label", name="flag_landingpad", caption="[img=entity/"..Landingpad.name_rocket_landing_pad.."]", tooltip={"entity-name."..Landingpad.name_rocket_landing_pad}}
          end
          if has_glyph then
            flags_flow.add{type="label", name="flag_tomb", caption="[img=entity/se-pyramid-a]", tooltip={"space-exploration.mysterious-structure"}}
          end
          if has_ruin then
            flags_flow.add{type="label", name="flag_ruin", caption="[img=virtual-signal/se-ruin]", tooltip={"space-exploration.ruin"}}
          end
        end


        -- tags
        if zone.tags then
          local caption = nil
          for _, tag in pairs(zone.tags) do
            if not string.find(tag, "enemy", 1, true) then
              if caption == nil then
                caption = {"space-exploration.climate_"..tag}
              else
                caption = {"space-exploration.simple-a-b-comma", caption, {"space-exploration.climate_"..tag}}
              end
            end
          end
          if zone.is_homeworld then
            caption = {"space-exploration.climate_homeworld"}
          end
          local label = zone_content_pane.add{type="label", name="label_tags", caption={"space-exploration.zone-tooltip-climate"}}
          label.style.top_margin = 10
          label.style.horizontally_stretchable = true
          label.style.font_color = {r=0.5,g=0.5,b=0.5}
          value = zone_content_pane.add{type="label", name="value_tags", caption=caption}
          value.style.horizontal_align = "left"
          value.style.single_line = false
        end

        if zone.surface_index and global.spaceships then
          local zone_spaceships = {}
          for _, spaceship in pairs(global.spaceships) do
            if spaceship.console and spaceship.console.valid and spaceship.console.surface == zone.surface_index then
              table.insert(zone_spaceships, spaceship)
            end
          end
        end

        local scan_button = zone_content_pane.add{type="button", name=Zonelist.name_zone_scan_surface_button, --style="green_button",
          caption={"space-exploration.scan-zone-button"},
          tooltip = {"space-exploration.scan-zone-button-tooltip"}}
        scan_button.style.top_margin = 15
        scan_button.style.horizontally_stretchable = true
        if forcedata.is_scanning then
          scan_button.caption={"space-exploration.stop-scan-zone-button"}
          scan_button.tooltip={"space-exploration.stop-scan-zone-button-tooltip"}
        elseif not RemoteView.is_unlocked(player) then
          scan_button.enabled = false
          scan_button.tooltip = {"space-exploration.scan-zone-button-disabled-tooltip"}
        end

        if Zone.is_solid(zone) then
          local confirm_extinction_button = zone_content_pane.add{type="button", name=Zonelist.name_zone_confirm_extinction_button,
            caption={"space-exploration.confirm-extinction-button"},
            tooltip = {"space-exploration.confirm-extinction-button-tooltip", zone.name, Zone.is_biter_meteors_hazard(zone) and 1 or 0}}
          confirm_extinction_button.style.top_margin = 10
          confirm_extinction_button.style.horizontally_stretchable = true
          if not zone.surface_index then
            confirm_extinction_button.enabled = false
            confirm_extinction_button.tooltip = {"space-exploration.generic-surface-doesnt-exist"}
          else
            local threat = Zone.get_threat(zone)
            if threat == 0 then
              confirm_extinction_button.enabled = false
              confirm_extinction_button.tooltip = {"space-exploration.confirm-extinction-button-already-extinct"}
            elseif threat == 0.01 and Zone.is_biter_meteors_hazard(zone) then
              confirm_extinction_button.enabled = false
              confirm_extinction_button.tooltip = {"space-exploration.confirm-extinction-button-already-extinct-biter-meteors"}
            end
          end
        end

        local trim_button = zone_content_pane.add{type="button", name=Zonelist.name_zone_trim_surface_button, style="red_button",
          caption={"space-exploration.trim-zone-button"},
          tooltip = {"space-exploration.trim-zone-button-tooltip"}}
        trim_button.style.top_margin = 10
        trim_button.style.horizontally_stretchable = true
        if not zone.surface_index then
          trim_button.enabled = false
          trim_button.tooltip = {"space-exploration.generic-surface-doesnt-exist"}
        end

        local delete_button = zone_content_pane.add{type="button", name=Zonelist.name_zone_delete_surface_button, style="red_button",
          caption={"space-exploration.delete-zone-button"},
          tooltip = {"space-exploration.delete-zone-button-tooltip"}}
        delete_button.style.top_margin = 10
        delete_button.style.horizontally_stretchable = true
        if not zone.surface_index then
          delete_button.enabled = false
          delete_button.tooltip = {"space-exploration.generic-surface-doesnt-exist"}
        end

      end

    end

    -- zone preview
    if zone_content_preview_frame then
      zone_content_preview_frame.clear()
      local surface = Zone.get_surface(zone)
      if surface then
        local position = {0,0}
        if playerdata.surface_positions and playerdata.surface_positions[surface.index] then
          position = playerdata.surface_positions[surface.index]
        end
        if zone.known_tiles_average_x and zone.known_tiles_average_y then
          position = {zone.known_tiles_average_x, zone.known_tiles_average_y}
        end
        local camera = zone_content_preview_frame.add{type="camera", name="zone_content_preview_camera", position=position, zoom=0.05, surface_index=surface.index}
        camera.style.horizontally_stretchable = true
        camera.style.vertically_stretchable = true
      else
        zone_content_preview_frame.style.horizontal_align = "center"
        zone_content_preview_frame.style.vertical_align = "center"
        local preview_text = zone_content_preview_frame.add{type="label", name="preview_text", caption="Scan, view, or visit the selected\nsurface to enable this preview camera."}
        preview_text.style.font_color = {r=0.5,g=0.5,b=0.5}
        preview_text.style.single_line = false
        preview_text.style.horizontal_align  = "center"
      end
    end
  else
    if zone_content_pane then zone_content_pane.clear() end
    if zone_content_preview_frame then zone_content_preview_frame.clear() end
  end
end

--- Refreshes the info of a specific zone in the zone list. Call when zone info changes.
function Zonelist.gui_update_zone_in_list(player_index, zone)
  local window = Zonelist.get_main_window(player_index)
  if not window then return end

  local row = Zonelist.find_row_for_zone(player_index, zone)
  local player = game.players[player_index]
  local force_name = player.force.name
  local playerdata = get_make_playerdata(player)
  local parent = row.parent
  row.destroy()
  Zonelist.gui_create_zone_row(playerdata, force_name, parent, zone)
  Zonelist.gui_update_list(player_index) -- Keep sort and filters
end

---Focuses on the Universe Explorer search bar when appropriately triggered.
---@param event CustomInputEvent
function Zonelist.focus_search(event)
  local window = Zonelist.get_main_window(event.player_index)
  if not window then return end
  local textfield = util.get_gui_element(window, Zonelist.path_zonelist_search)
  if textfield then textfield.focus() end
end
Event.addListener(mod_prefix.."focus-search", Zonelist.focus_search)

---Generates a unique name for a zone or spaceship.
---@param zone AnyZoneType|SpaceshipType Zone or spaceship
---@return string name
function Zonelist.get_row_name_for_zone(zone)
  local name = "zone_" .. zone.index
  if zone.type == "spaceship" then
    name = "spaceship_" .. zone.index
  end
  return name
end

---Returns the LuaGuiELement representing a given zone's row in the zonelist, if any
---@param player_index uint Player index
---@param zone AnyZoneType|SpaceshipType Zone or spaceship
---@return LuaGuiElement row
function Zonelist.find_row_for_zone(player_index, zone)
  local rows = get_make_playerdata(game.players[player_index]).zonelist_zone_rows
  if rows then return rows[Zonelist.get_row_name_for_zone(zone)] end
end

---Creates a row button for a given zone in the Universe Explorer.
---@param playerdata PlayerData Player data
---@param force_name string name
---@param parent LuaGuiElement Gui element in which to place the zone row
---@param zone AnyZoneType|SpaceshipType Zone or spaceship to add
function Zonelist.gui_create_zone_row(playerdata, force_name, parent, zone)
  Log.debug_log("zonelist: "..zone.type.." "..zone.name.." "..zone.index, "zonelist")

  local name = Zonelist.get_row_name_for_zone(zone)
  local row = parent.add{type="button", name=name, style=(zone == playerdata.zonelist_selected_zone and "zonelist_row_button_selected" or "zonelist_row_button")}
  local row_flow = row.add{type="flow", name="row_flow", direction="horizontal", ignored_by_interaction=true}

  do
    local hierarchy = " ✖"
    if zone.type == "planet" then hierarchy = "   | - ●"
    elseif zone.type == "moon" then hierarchy = "   |      | - ●"
    elseif zone.type == "asteroid-belt" then hierarchy = "   | - ✖" end
    if zone.type == "orbit" then
      if zone.parent.type == "star" then hierarchy = "⬤"
      elseif zone.parent.type == "planet" then hierarchy = "   |    ○"
      else hierarchy = "   |      |    ○" end
    end
    if zone.type == "anomaly" then hierarchy = "  ?" end
    if zone.type == "spaceship" then hierarchy = "  ▴" end

    row_flow.add{type="label", name="cell_hierarchy", caption=hierarchy, style="se_zonelist_cell_heirarchy"}
  end

  row_flow.add{type="label", name="cell_type", caption="[img="..Zone.get_icon(zone).."]", tooltip=Zone.type_title(zone), style="se_zonelist_cell_type"}
  row_flow.add{type="label", name="cell_name", caption=zone.name, style="se_zonelist_cell_name"}
  row_flow.add{type="label", name="cell_radius", caption=zone.radius and (string.format("%.0f", zone.radius)) or "-", style="se_zonelist_cell_numeric_value"}

  do
    local caption = (zone.primary_resource and zone.type ~= "orbit") and ("[img=entity/".. zone.primary_resource.."]") or "-"
    local tooltip = (zone.primary_resource and zone.type ~= "orbit") and ({"entity-name."..zone.primary_resource}) or nil

    if zone.is_homeworld then
      caption = "[img=item/se-core-fragment-omni]"
      tooltip = {"item-name.se-core-fragment-omni"}
    end

    row_flow.add{type="label", name="cell_resource", caption = caption, tooltip = tooltip, style = "se_zonelist_cell_resource" }
  end

  row_flow.add{type="label", name="cell_attrition", caption=string.format("%.2f", zone.bot_attrition), style="se_zonelist_cell_numeric_value"}
  row_flow.add{type="label", name="cell_threat", caption=string.format("%.0f", Zone.get_threat(zone)*100).."%", style="se_zonelist_cell_numeric_value"}
  row_flow.add{type="label", name="cell_solar", caption=string.format("%.0f", Zone.get_display_light_percent(zone) * 100).."%", style="se_zonelist_cell_numeric_value"}

  do
    local caption = ""
    if playerdata.visited_zone and playerdata.visited_zone[zone.index] and zone.type ~= "spaceship" then
      caption = caption .. "[img=entity/character]"
    end
    if global.forces[force_name].zone_assets
    and global.forces[force_name].zone_assets[zone.index]
    and next(global.forces[force_name].zone_assets[zone.index].rocket_launch_pad_names) then
      caption = caption .. "[img=entity/"..Launchpad.name_rocket_launch_pad.."]"
    end
    if global.forces[force_name].zone_assets
    and global.forces[force_name].zone_assets[zone.index]
    and next(global.forces[force_name].zone_assets[zone.index].rocket_landing_pad_names) then
      caption = caption .. "[img=entity/"..Landingpad.name_rocket_landing_pad.."]"
    end
    if playerdata.track_glyphs and (zone.glyph ~= nil) then
      caption = caption .. "[img=entity/se-pyramid-a]"
    end
    if zone.interburbulator or zone.ruins then
      caption = caption .. "[img=virtual-signal/se-ruin]"
    end

    row_flow.add{type="label", name="cell_flags", caption=caption, style="se_zonelist_cell_flags"}
  end

  do
    local priority = Zone.get_priority(zone, force_name)
    local cell_priority = row_flow.add{type="label", name="cell_priority", caption=priority, style="se_zonelist_cell_priority"}
    if priority > 0 then
      cell_priority.style.font_color = Zonelist.name_color_priority_positive
    elseif priority < 0 then
      cell_priority.style.font_color = Zonelist.name_color_priority_negative
    else
      cell_priority.style.font_color = Zonelist.name_color_priority_neutral
    end
  end

  playerdata.zonelist_zone_rows[Zonelist.get_row_name_for_zone(zone)] = row
  return row
end

---Creates or updates the zone list.
---@param player_index uint Player index
function Zonelist.gui_update_list(player_index)
  local player = game.players[player_index]
  if not player and player.connected then return end

  local window = Zonelist.get_main_window(player_index)
  if not window then return end

  local force_name = player.force.name
  local playerdata = get_make_playerdata(player)
  local selected_zone = playerdata.zonelist_selected_zone
  if not selected_zone then selected_zone = Zone.from_surface(player.surface) end

  local zonelist_headings_row = util.get_gui_element(window, Zonelist.path_zonelist_headings_row)
  local zonelist_scroll = util.get_gui_element(window, Zonelist.path_zonelist_scroll)
  local zonelist_search = util.get_gui_element(window, Zonelist.path_zonelist_search)

  if not zonelist_scroll then return end

  local zones_list = {}
  local all_zones = zones_list

  -- Build list in the hierarchy order as it is the most dificult to sort
  Zone.insert_if_visible_to_force(zones_list, global.universe.anomaly, force_name)
  for _, star in pairs(global.universe.stars) do
    Zone.insert_if_visible_to_force(zones_list, star.orbit, force_name)
    for _, planet_or_belt in pairs(star.children) do
      Zone.insert_if_visible_to_force(zones_list, planet_or_belt, force_name)
      if planet_or_belt.orbit then
        Zone.insert_if_visible_to_force(zones_list, planet_or_belt.orbit, force_name)
      end
      if planet_or_belt.children then
        for _, moon in pairs(planet_or_belt.children) do
          Zone.insert_if_visible_to_force(zones_list, moon, force_name)
          Zone.insert_if_visible_to_force(zones_list, moon.orbit, force_name)
        end
      end
    end
  end

  -- Gather asteroid fields and the anomaly
  for _, zone in pairs(global.universe.space_zones) do
    Zone.insert_if_visible_to_force(zones_list, zone, force_name)
  end

  -- Gather spaceships
  for _, spaceship in pairs(global.spaceships) do
    Zone.insert_if_visible_to_force(zones_list, spaceship, force_name)
  end

  -- Apply filters selected by player
  if playerdata.zonelist_filter_excludes and table_size(playerdata.zonelist_filter_excludes) > 0 then
    local temp_list = zones_list
    zones_list = {}
    for _, zone in pairs(temp_list) do
      if not playerdata.zonelist_filter_excludes[Zonelist.name_zonelist_priority_toggle] or
        Zone.get_priority(zone, force_name) >= playerdata.zonelist_priority_threshold then
        if zone.type == "orbit" then
          if zone.parent.type == "star" then
            if not playerdata.zonelist_filter_excludes["star"] then
              table.insert(zones_list, zone)
            end
          elseif zone.parent.type == "planet" then
            if not playerdata.zonelist_filter_excludes["planet-orbit"] then
              table.insert(zones_list, zone)
            end
          elseif zone.parent.type == "moon" then
            if not playerdata.zonelist_filter_excludes["moon-orbit"] then
              table.insert(zones_list, zone)
            end
          end
        else
          if not playerdata.zonelist_filter_excludes[zone.type] then
            table.insert(zones_list, zone)
          end
        end
      end
    end
  end

  -- Get search text
  local search = nil
  if zonelist_search then
    search = string.trim(zonelist_search.text)
    if search == "" then search = nil end
  end

  -- Use search text to further refine selection
  if search then
    local search_number = tonumber(search)
    local search_is_number = search_number and search_number .. "" == search
    local resource_names = {}
    for resource_name, resource_settings in pairs(global.resources_and_controls.resource_settings) do
      if string.find(string.lower(resource_name), string.lower(search), 1, true) then
        table.insert(resource_names, resource_name)
      end
    end

    local temp_list = zones_list
    zones_list = {}
    for _, zone in pairs(temp_list) do
      if string.find(string.lower(zone.name), string.lower(search), 1, true) then
        table.insert(zones_list, zone)
      elseif search_is_number and search_number == zone.index then
        table.insert(zones_list, zone)
      elseif #resource_names > 0 and zone.type ~= "orbit" then
        for _, resource_name in pairs(resource_names) do
          if zone.controls and zone.controls[resource_name] and zone.controls[resource_name].size > 0 and zone.controls[resource_name].richness > 0 then
            table.insert(zones_list, zone)
            break
          end
        end
      end
    end
  end

  -- sort

  local try_criteria = playerdata.sort_criteria or {}
  -- set criteris in reverse order
  -- eg {"name", "type"} = sort alphabetically then by type, so type has priority, then alphabetical within type
  -- if "hierarchy" or "name" are in the list then later ones are removed as they won't do anything.

  local sort_criteria = {}
  if #try_criteria > 0 then
    for i = #try_criteria, 1, -1 do
      table.insert(sort_criteria, 1, try_criteria[i])
      if try_criteria[i].name == "hierarchy" or try_criteria[i].name == "name" then
        break
      end
    end
  end
  if #sort_criteria == 0 then
    sort_criteria = {{name="hierarchy", direction=1}}
  end
  playerdata.sort_criteria = sort_criteria

  for i = 1, #sort_criteria, 1 do
    local mode = sort_criteria[i].name
    local direction = sort_criteria[i].direction or 1
    if mode == "hierarchy" then
      -- nothing to do, should alredy be in this mode
      table.sort(zones_list, function(a,b)
        if a.type == "spaceship" then
          if b.type == "spaceship" then
            return a.name < b.name
          end
          return false
        end
        if b.type == "spaceship" then
          return true
        end
        return a.hierarchy_index < b.hierarchy_index end)
    elseif mode == "type" then
      if direction == -1 then
        table.sort(zones_list, function(a,b)
          if a.type == b.type and a.type == "orbit" then return a.parent.type < b.parent.type end
          return a.type < b.type
        end)
      else
        table.sort(zones_list, function(a,b)
          if a.type == b.type and a.type == "orbit" then return a.parent.type > b.parent.type end
          return a.type > b.type
        end)
      end
    elseif mode == "name" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return a.name > b.name end)
      else
        table.sort(zones_list, function(a,b) return a.name < b.name end)
      end
    elseif mode == "radius" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return (a.radius or 0) < (b.radius or 0) end)
      else
        table.sort(zones_list, function(a,b) return (a.radius or 0) > (b.radius or 0) end)
      end
    elseif mode == "resource" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return (a.is_homeworld and "1" or ((a.type ~= "orbit" and a.primary_resource) and a.primary_resource or "zzz")) > (b.is_homeworld and "1" or ((b.type ~= "orbit" and b.primary_resource) and b.primary_resource or "zzz")) end)
      else
        table.sort(zones_list, function(a,b) return (a.is_homeworld and "1" or ((a.type ~= "orbit" and a.primary_resource) and a.primary_resource or "zzz")) < (b.is_homeworld and "1" or ((b.type ~= "orbit" and b.primary_resource) and b.primary_resource or "zzz")) end)
      end
    elseif mode == "attrition" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return a.bot_attrition > b.bot_attrition end)
      else
        table.sort(zones_list, function(a,b) return a.bot_attrition < b.bot_attrition end)
      end
    elseif mode == "threat" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return Zone.get_threat(a) > Zone.get_threat(b) end)
      else
        table.sort(zones_list, function(a,b) return Zone.get_threat(a) < Zone.get_threat(b) end)
      end
    elseif mode == "solar" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return Zone.get_display_light_percent(a) < Zone.get_display_light_percent(b) end)
      else
        table.sort(zones_list, function(a,b) return Zone.get_display_light_percent(a) > Zone.get_display_light_percent(b) end)
      end
    elseif mode == "flags" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return Zone.get_flags_weight(a, force_name, playerdata) < Zone.get_flags_weight(b, force_name, playerdata) end)
      else
        table.sort(zones_list, function(a,b) return Zone.get_flags_weight(a, force_name, playerdata) > Zone.get_flags_weight(b, force_name, playerdata) end)
      end
    elseif mode == "priority" then
      if direction == -1 then
        table.sort(zones_list, function(a,b) return Zone.get_priority(a, force_name) < Zone.get_priority(b, force_name) end)
      else
        table.sort(zones_list, function(a,b) return Zone.get_priority(a, force_name) > Zone.get_priority(b, force_name) end)
      end
    end
  end

  -- Build headings row if it's empty
  -- Column names are: hierarchy, type, name, radius, resource, attrition, solar, priority
  if zonelist_headings_row and #zonelist_headings_row.children == 0 then
    zonelist_headings_row.add{type="button", name="cell_hierarchy", caption="[img=virtual-signal/se-hierarchy]", tooltip={"space-exploration.zonelist-heading-hierarchy"}, style="se_zonelist_cell_heading_base"}
    zonelist_headings_row.add{type="button", name="cell_type", caption="[img=virtual-signal/se-planet]", tooltip={"space-exploration.zonelist-heading-type"}, style="se_zonelist_cell_heading_base"}
    zonelist_headings_row.add{type="button", name="cell_name", caption={"space-exploration.name"}, tooltip={"space-exploration.zonelist-heading-name"}, style="se_zonelist_cell_heading_name"}
    zonelist_headings_row.add{type="button", name="cell_radius", caption="[img=virtual-signal/se-radius]", tooltip={"space-exploration.zonelist-heading-radius"}, style="se_zonelist_cell_heading_base"}
    zonelist_headings_row.add{type="button", name="cell_resource", caption="[img=item/se-core-fragment-omni]", tooltip={"space-exploration.zonelist-heading-primary-resource"}, style="se_zonelist_cell_heading_base"}
    zonelist_headings_row.add{type="button", name="cell_attrition", caption="[img=item/logistic-robot]", tooltip={"space-exploration.zonelist-heading-attrition"}, style="se_zonelist_cell_heading_base"}
    zonelist_headings_row.add{type="button", name="cell_threat", caption="[img=item/artillery-targeting-remote]", tooltip={"space-exploration.zonelist-heading-threat"}, style="se_zonelist_cell_heading_base"}
    zonelist_headings_row.add{type="button", name="cell_solar", caption="[img=item/solar-panel]", tooltip={"space-exploration.zonelist-heading-solar"}, style="se_zonelist_cell_heading_base"}
    zonelist_headings_row.add{type="button", name="cell_flags", caption="[img=item/"..Landingpad.name_rocket_landing_pad.."]", tooltip={"space-exploration.zonelist-heading-flags"}, style="se_zonelist_cell_heading_flags"}
    zonelist_headings_row.add{type="button", name="cell_priority", caption="[img=virtual-signal/se-accolade]", tooltip={"space-exploration.zonelist-heading-priority"}, style="se_zonelist_cell_heading_base"}
  end

  playerdata.zonelist_zone_rows = playerdata.zonelist_zone_rows or {}

  if #zonelist_scroll.children == 0 then
    -- Since the scroll pane is empty, create every row that apears in `zones_list`
    for _, zone in pairs(zones_list) do
      Zonelist.gui_create_zone_row(playerdata, force_name, zonelist_scroll, zone)
    end
  else
    -- Gather visible zones into a table with easily searchable keys
    local visible_zones = {}
    for i, zone in pairs(zones_list) do visible_zones[Zonelist.get_row_name_for_zone(zone)] = i end

    -- Iterate over all zones, since we might need to hide some rows that should not be visible
    for _, zone in pairs(all_zones) do
      local id = Zonelist.get_row_name_for_zone(zone)
      local row = playerdata.zonelist_zone_rows[id]
      local new_index = visible_zones[id]

      if new_index then
        row = row or Zonelist.gui_create_zone_row(playerdata, force_name, zonelist_scroll, zone)
        row.visible = true
        local old_index = row.get_index_in_parent()
        if new_index ~= old_index then zonelist_scroll.swap_children(new_index, old_index) end
      elseif row then
        row.visible = false
      end
    end
  end
end

function Zonelist.on_gui_closed(event)
  if event.element and event.element.valid and event.element.name == Zonelist.name_gui_root then
    Zonelist.gui_close(event.player_index)
  end
end
Event.addListener(defines.events.on_gui_closed, Zonelist.on_gui_closed)

function Zonelist.toggle_main_window(player_index)
  local window = Zonelist.get_main_window(player_index)
  if window then
    window.destroy()
  else
    Zonelist.gui_open(player_index)
  end
end

---Handles gui clicks for the Universe Explorer.
---@param event on_gui_click
function Zonelist.on_gui_click (event)
  if not (event.element and event.element.valid) then return end
  local element = event.element
  local player = game.players[event.player_index]

  if event.element.name == Zonelist.name_button_overhead_explorer then
    Zonelist.toggle_main_window(event.player_index) return
  end

  local root = gui_element_or_parent(element, Zonelist.name_gui_root)
  if root then -- remote view
    local map_view_zone = MapView.gui_get_zone_from_element(root)
    local playerdata = get_make_playerdata(player)
    if element.name == Zonelist.name_button_view_zone then
      if RemoteView.is_unlocked(player) then
        local zone
        if root.parent then zone = MapView.gui_get_zone_from_element(root.parent) end -- try to get zone from parent
        if not zone then zone = map_view_zone or Zonelist.get_selected_zone_or_current(event.player_index) end
        if zone then
          Zonelist.gui_close(event.player_index)
          MapView.gui_close(player)
          RemoteView.start(player, zone)
        end
      else
        player.print({"space-exploration.remote-view-requires-satellite"})
      end
    elseif element.parent and element.parent.name == Zonelist.name_zonelist_headings_row then
      playerdata.sort_criteria = playerdata.sort_criteria or {}
      local criterion = util.replace(element.name, "cell_", "")
      if playerdata.sort_criteria[#playerdata.sort_criteria].name == criterion then
        playerdata.sort_criteria[#playerdata.sort_criteria].direction = -1 * (playerdata.sort_criteria[#playerdata.sort_criteria].direction or 1)
      else
        for _, c in pairs(playerdata.sort_criteria) do
          if c.name == criterion then
            table.remove(playerdata.sort_criteria, _)
            break
          end
        end
        table.insert(playerdata.sort_criteria, {name=criterion, direction = 1})
      end
      Zonelist.gui_update_list(event.player_index)
    elseif gui_element_or_parent(element.parent, Zonelist.name_zonelist_scroll) then
      if string.find(element.name, "zone_", 1, true) then
        local number_string = util.replace(element.name, "zone_", "")
        local zone_index = util.string_to_number(number_string)
        local zone = Zone.from_zone_index(zone_index)
        if zone then
          Zonelist.gui_restore_row_style(event.player_index)
          playerdata.zonelist_selected_zone = zone
          Zonelist.gui_update_selected(event.player_index)
        end
      elseif string.find(element.name, "spaceship_", 1, true) then
        local number_string = util.replace(element.name, "spaceship_", "")
        local spaceship_index = util.string_to_number(number_string)
        local spaceship = Spaceship.from_index(spaceship_index)
        if spaceship then
          Zonelist.gui_restore_row_style(event.player_index)
          playerdata.zonelist_selected_zone = spaceship
          Zonelist.gui_update_selected(event.player_index)
        end
      end
    elseif element.name == Zonelist.name_button_starmap then
      Zonelist.gui_close(event.player_index)
      MapView.start_interstellar_map(player)
    elseif element.name == Zonelist.name_zonelist_search_clear then
      local textfield = util.get_gui_element(root, Zonelist.path_zonelist_search)
      if textfield then
        textfield.text = ""
        Zonelist.gui_update_list(event.player_index)
      end
    elseif element.parent and element.parent.name == Zonelist.name_zonelist_filters then
      playerdata.zonelist_filter_excludes = playerdata.zonelist_filter_excludes or {}
      if playerdata.zonelist_filter_excludes[element.name] then
        playerdata.zonelist_filter_excludes[element.name] = nil
        element.style = "se_zone_list_filter_down"
      else
        playerdata.zonelist_filter_excludes[element.name] = true
        element.style = "se_zone_list_filter"
      end
      Zonelist.gui_update_list(event.player_index)
    elseif element.name == Zonelist.name_zonelist_priority_toggle then
      playerdata.zonelist_filter_excludes = playerdata.zonelist_filter_excludes or {}
      if playerdata.zonelist_filter_excludes[element.name] then
        playerdata.zonelist_filter_excludes[element.name] = nil
        element.style = "se_priority_toggle_button"
      else
        playerdata.zonelist_filter_excludes[element.name] = true
        element.style = "se_priority_toggle_button_down"
      end
      Zonelist.gui_update_list(event.player_index)
    elseif element.name == Zonelist.name_zonelist_priority_threshold_plus_button then
      playerdata.zonelist_priority_threshold = math.min(playerdata.zonelist_priority_threshold + 1, Zonelist.priority_max)
      local window = Zonelist.get_main_window(event.player_index)
      local priority_threshold_field = util.get_gui_element(window, Zonelist.path_zonelist_priority_threshold)
      priority_threshold_field.text = "" .. playerdata.zonelist_priority_threshold
      if playerdata.zonelist_filter_excludes[Zonelist.name_zonelist_priority_toggle] then
        Zonelist.gui_update_list(event.player_index)
      end
    elseif element.name == Zonelist.name_zonelist_priority_threshold_minus_button then
      playerdata.zonelist_priority_threshold = math.max(playerdata.zonelist_priority_threshold - 1, -Zonelist.priority_max)
      local window = Zonelist.get_main_window(event.player_index)
      local priority_threshold_field = util.get_gui_element(window, Zonelist.path_zonelist_priority_threshold)
      priority_threshold_field.text = "" .. playerdata.zonelist_priority_threshold
      if playerdata.zonelist_filter_excludes[Zonelist.name_zonelist_priority_toggle] then
        Zonelist.gui_update_list(event.player_index)
      end
    elseif element.name == Zonelist.name_zone_priority_plus_button then
      local zone = Zonelist.get_selected_zone_or_current(event.player_index)
      local forcedata = global.forces[player.force.name]
      if zone.type ~= "spaceship" then
        forcedata.zone_priorities = forcedata.zone_priorities or {}
        local priority = (forcedata.zone_priorities[zone.index] or 0) + 1
        Zonelist.change_priority(player.force.name, zone, priority)
      else
        forcedata.spaceship_priorities = forcedata.spaceship_priorities or {}
        local priority = (forcedata.spaceship_priorities[zone.index] or 0) + 1
        Zonelist.change_priority(player.force.name, zone, priority)
      end
    elseif element.name == Zonelist.name_zone_priority_minus_button then
      local zone = Zonelist.get_selected_zone_or_current(event.player_index)
      local forcedata = global.forces[player.force.name]
      if zone.type ~= "spaceship" then
        forcedata.zone_priorities = forcedata.zone_priorities or {}
        local priority = (forcedata.zone_priorities[zone.index] or 0) - 1
        Zonelist.change_priority(player.force.name, zone, priority)
      else
        forcedata.spaceship_priorities = forcedata.spaceship_priorities or {}
        local priority = (forcedata.spaceship_priorities[zone.index] or 0) - 1
        Zonelist.change_priority(player.force.name, zone, priority)
      end
    elseif element.name == Zonelist.name_zone_trim_surface_button then
      local zone
      if root.parent then zone = MapView.gui_get_zone_from_element(root.parent) end -- try to get zone from parent
      if not zone then zone = map_view_zone or Zonelist.get_selected_zone_or_current(event.player_index) end
      if zone then
        local forcedata = global.forces[player.force.name]
        if forcedata.is_scanning and forcedata.scanning_zone == zone then
          Scanner.stop_scanning(player.force.name)
        end
        Zone.trim_surface(zone, event.player_index)
      end
    elseif element.name == Zonelist.name_zone_delete_surface_button then
      local zone
      if root.parent then zone = MapView.gui_get_zone_from_element(root.parent) end -- try to get zone from parent
      if not zone then zone = map_view_zone or Zonelist.get_selected_zone_or_current(event.player_index) end
      if zone then
        local forcedata = global.forces[player.force.name]
        if forcedata.is_scanning and forcedata.scanning_zone == zone then
          Scanner.stop_scanning(player.force.name)
        end
        Zone.delete_surface(zone, event.player_index)
        Zonelist.gui_update_selected(event.player_index)
        MapView.gui_update(player)
      end
    elseif element.name == Zonelist.name_zone_scan_surface_button then
      local forcedata = global.forces[player.force.name]
      local zone
      if root.parent then zone = MapView.gui_get_zone_from_element(root.parent) end -- try to get zone from parent
      if not zone then zone = map_view_zone or Zonelist.get_selected_zone_or_current(event.player_index) end
      if forcedata.is_scanning then
        Scanner.stop_scanning(player.force.name)
      else
        Scanner.start_scanning(player.force.name, zone)
      end
    elseif element.name == Zonelist.name_zone_confirm_extinction_button then
      local zone
      if root.parent then zone = MapView.gui_get_zone_from_element(root.parent) end -- try to get zone from parent
      if not zone then zone = map_view_zone or Zonelist.get_selected_zone_or_current(event.player_index) end
      Zone.confirm_extinction(zone, event.player_index)
    elseif element.name == Zonelist.name_button_close then
      Zonelist.gui_close(event.player_index)
    end
    return
  end
end
Event.addListener(defines.events.on_gui_click, Zonelist.on_gui_click)

function Zonelist.change_priority(force_name, zone, priority)
  priority = math.min(math.max(priority, -Zonelist.priority_max), Zonelist.priority_max)
  local forcedata = global.forces[force_name]
  if zone.type == "spaceship" then
    forcedata.spaceship_priorities = forcedata.spaceship_priorities or {}
    forcedata.spaceship_priorities[zone.index] = priority
  else
    forcedata.zone_priorities = forcedata.zone_priorities or {}
    forcedata.zone_priorities[zone.index] = priority
  end
  for _, player in pairs(game.connected_players) do
    local window = Zonelist.get_main_window(player.index)
    if window then
      local zonelist_scroll = util.get_gui_element(window, Zonelist.path_zonelist_scroll)

      local row = zonelist_scroll[(zone.type == "spaceship" and "spaceship" or "zone").."_"..zone.index]
      if row and row.row_flow and row.row_flow.cell_priority then
        local cell = row.row_flow.cell_priority
        cell.caption = priority
        if priority > 0 then
          cell.style.font_color = Zonelist.name_color_priority_positive
        elseif priority < 0 then
          cell.style.font_color = Zonelist.name_color_priority_negative
        else
          cell.style.font_color = Zonelist.name_color_priority_neutral
        end
      end
      local selected_zone = Zonelist.get_selected_zone_or_current(player.index)
      if selected_zone == zone then
        local textfield = util.get_gui_element(window, Zonelist.path_zone_content_priority_field)
        textfield.text = ""..priority
        if priority > 0 then
          textfield.style.font_color = Zonelist.name_color_priority_positive
        elseif priority < 0 then
          textfield.style.font_color = Zonelist.name_color_priority_negative
        else
          textfield.style.font_color = Zonelist.name_color_priority_neutral
        end
      end
    end
  end
end

---Handles search, priority, and priority threshold text field changes.
---@param event on_gui_text_changed
function Zonelist.on_gui_text_changed(event)
  if not (event.element and event.element.valid) then return end
  local element = event.element
  local root = gui_element_or_parent(element, Zonelist.name_gui_root)
  if root then -- remote view
    if element.name == Zonelist.name_zonelist_search then
      Zonelist.gui_update_list(event.player_index)
    elseif element.name == Zonelist.name_zone_priority_field then
      local player = game.players[event.player_index]
      local zone = Zonelist.get_selected_zone_or_current(event.player_index)
      local priority = util.string_to_number(element.text)
      if priority then
        Zonelist.change_priority(player.force.name, zone, priority)
      end
    elseif element.name == Zonelist.name_zonelist_priority_threshold_field then
      local player = game.players[event.player_index]
      local playerdata = get_make_playerdata(player)
      local priority_input = util.string_to_number(element.text) or 0
      playerdata.zonelist_priority_threshold = math.min(math.max(priority_input, -Zonelist.priority_max), Zonelist.priority_max)
      if math.abs(playerdata.zonelist_priority_threshold) == Zonelist.priority_max then
        element.text = "" .. playerdata.zonelist_priority_threshold
      end
      Zonelist.gui_update_list(player.index)
    end
  end
end
Event.addListener(defines.events.on_gui_text_changed, Zonelist.on_gui_text_changed)

function Zonelist.on_lua_shortcut (event)
  if event.player_index
    and game.players[event.player_index]
    and game.players[event.player_index].connected then

      if event.prototype_name == Zonelist.name_shortcut then
        Zonelist.toggle_main_window(event.player_index)
      end

  end
end
Event.addListener(defines.events.on_lua_shortcut, Zonelist.on_lua_shortcut)

function Zonelist.on_universe_explorer_keypress (event)
  Zonelist.toggle_main_window(event.player_index)
end
Event.addListener(Zonelist.name_event, Zonelist.on_universe_explorer_keypress)

function Zonelist.update_overhead_button(player_index)
  local player = game.players[player_index]
  local button_flow = mod_gui.get_button_flow(player)
  if button_flow then
    if settings.get_player_settings(player)[Zonelist.name_setting_overhead_explorer].value == true then
      if not button_flow[Zonelist.name_button_overhead_explorer] then
        button_flow.add{type="sprite-button", name=Zonelist.name_button_overhead_explorer, sprite="se-map-gui-universe-explorer"}
      end
      if Zonelist.is_unlocked(player) then
        button_flow[Zonelist.name_button_overhead_explorer].enabled = true
        button_flow[Zonelist.name_button_overhead_explorer].tooltip = {"space-exploration.zonelist-window-title"}
      else
        button_flow[Zonelist.name_button_overhead_explorer].enabled = false
        button_flow[Zonelist.name_button_overhead_explorer].tooltip = Zonelist.unlock_requirement_string(player)
      end
    else
      if button_flow[Zonelist.name_button_overhead_explorer] then
        button_flow[Zonelist.name_button_overhead_explorer].destroy()
      end
    end
  end
end

function Zonelist.on_runtime_mod_setting_changed(event)
  if event.player_index and event.setting == Zonelist.name_setting_overhead_explorer then
    Zonelist.update_overhead_button(event.player_index)
  end
end
Event.addListener(defines.events.on_runtime_mod_setting_changed, Zonelist.on_runtime_mod_setting_changed)

function Zonelist.on_configuration_changed()
  for _, player in pairs(game.connected_players) do
    Zonelist.update_overhead_button(player.index)
  end
end
Event.addListener("on_configuration_changed", Zonelist.on_configuration_changed, true)


return Zonelist

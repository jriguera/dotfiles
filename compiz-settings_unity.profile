[animation]
s0_open_matches = ((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver);((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=\.exe$));(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd);
s0_close_matches = ((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot);((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=\.exe$));(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd);
s0_unminimize_effects = animation:Glide 2;

[core]
s0_active_plugins = core;composite;opengl;place;regex;resize;session;snap;vpswitch;wall;animation;commands;compiztoolbox;copytex;fade;grid;imgpng;mousepoll;move;scale;unitymtgrabhandles;workarounds;expo;ezoom;unityshell;
s0_outputs = 1366x768+0+0;
s0_autoraise_delay = 500
s0_focus_prevention_match = class=conky-semi
s0_show_desktop_key = <Control><Super>d
s0_hsize = 4

[decor]
s0_active_shadow_color = #00000080
s0_inactive_shadow_color = #000000ff

[expo]
s0_expo_edge = TopRight
s0_next_vp_button = Disabled
s0_prev_vp_button = Disabled
s0_expo_animation = 1
s0_distance = 0,005000
s0_vp_saturation = 40,000000
s0_selected_color = #73d216ff
s0_reflection = true
s0_ground_color1 = #b3b3b3cc
s0_ground_color2 = #b3b3b300

[ezoom]
s0_zoom_in_button = <Shift>Button4
s0_zoom_out_button = <Shift>Button5
s0_zoom_box_outline_color = #2f2f4f9f
s0_zoom_box_fill_color = #2f2f2f4f

[fade]
s0_visual_bell = true

[gnomecompat]
s0_main_menu_key = <Super>s
s0_command_window_screenshot = gnome-screenshot -w
s0_command_terminal = x-terminal-emulator
s0_run_command_terminal_key = <Control><Alt>t

[scale]
s0_overlay_icon = 1
s0_initiate_all_edge = BottomRight

[session]
s0_ignore_match = class=conky-semi

[staticswitcher]
s0_next_key = Disabled
s0_prev_key = Disabled
s0_background_color = #333333d9

[switcher]
s0_background_color = #333333d9

[unityshell]
s0_inactive_shadow_color = #000000a5
s0_launcher_hide_mode = 1
s0_launcher_minimize_window = true

[vpswitch]
s0_switch_to_1_key = <Super>Home
s0_next_button = Button4
s0_prev_button = Button5

[wall]
s0_thumb_highlight_gradient_shadow_color = #dfdfdfff
s0_arrow_base_color = #e6e6e6d9
s0_arrow_shadow_color = #dcdcdcd9


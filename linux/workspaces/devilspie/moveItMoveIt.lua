debug_print("Application: " .. get_application_name())
debug_print("Window: " .. get_window_name());

---------------------------------------------------------------
----------------------- Window Rules --------------------------
---------------------------------------------------------------

---------------------- Workspace 1 ----------------------------
-- Google Chrome - move to workspace 1
if string.match(string.lower(get_application_name()), "chrome") then
  -- unmaximize();
  -- set_window_geometry(2561, 0, 1200, 1000);
  set_window_workspace(1);
  maximize();
end

---------------------- Workspace 2 ----------------------------
-- All discord windows - move to workspace 2
if string.match(string.lower(get_application_name()), "discord") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(2);
  maximize();
end

-- Spotify - move to workspace 2
if string.match(string.lower(get_application_name()), "spotify") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(2);
  maximize();
end

---------------------- Workspace 3 ----------------------------
-- Vim and LunarVim - move to workspace 3
if string.match(string.lower(get_application_name()), "vim") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(3);
  maximize();
end

-- Visual Studio Code - move to workspace 3
if string.match(string.lower(get_application_name()), "visual studio code") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(3);
  maximize();
end

-- Terminal - move to workspace 3
if string.match(string.lower(get_application_name()), "terminal") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(3);
  maximize();
  focus_window();
end

---------------------- Workspace 4 ----------------------------
-- Blender - move to workspace 4
if string.match(string.lower(get_application_name()), "blender") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(4);
  maximize();
  focus_window();
end

-- Notion - move to workspace 4
if string.match(string.lower(get_application_name()), "notion") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(4);
  maximize();
  focus_window();
end

-- Portmaster - move to workspace 4
if string.match(string.lower(get_application_name()), "portmaster") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(4);
  maximize();
  focus_window();
end

-- Edge - move to workspace 4
if string.match(string.lower(get_application_name()), "edge") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(4);
  maximize();
end

---------------------- Workspace 5 ----------------------------
-- 1Password - move to workspace 5
if string.match(string.lower(get_application_name()), "1password") then
  unmaximize();
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(5);
  maximize();
end

-- Authy - move to workspace 5
if string.match(string.lower(get_application_name()), "authy") then
  set_window_geometry(2561, 0, 1000, 1000);
  set_window_workspace(5);
  center();
end

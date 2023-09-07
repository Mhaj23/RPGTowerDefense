// obj_warrior Create Event
event_inherited();
show_debug_message("Warrior's health after inherited: " + string(health));
health = 300;
show_debug_message("Warrior's health after manual set: " + string(health));

max_health = 300;


speed = 1;
path_start(Path1, speed, path_action_restart, 0);
show_debug_message("Warrior created with health: " + string(health));

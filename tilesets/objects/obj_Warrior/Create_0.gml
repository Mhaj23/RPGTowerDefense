speed = 2;        // Set the speed of the enemy, adjust as needed
health = 100;  // Assign an initial health value. Adjust as needed.
path_start(Path1, speed, path_action_restart, 0);
show_debug_message("Warrior created with health: " + string(health));
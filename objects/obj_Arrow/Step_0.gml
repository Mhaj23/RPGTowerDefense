if (instance_exists(target)) {
    direction = point_direction(x, y, target.x, target.y);
}
show_debug_message("Target is: " + string(target));

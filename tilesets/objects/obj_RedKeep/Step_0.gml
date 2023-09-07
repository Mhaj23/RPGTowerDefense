// Decrease the firing timer
if (fire_timer > 0) {
    fire_timer--;
}

// Check for enemies within range
var nearest_enemy = instance_nearest(x, y, obj_Warrior);
if (instance_exists(nearest_enemy) && point_distance(x, y, nearest_enemy.x, nearest_enemy.y) <= range) {
    // If the fire_timer has run out, shoot at the enemy
    if (fire_timer <= 0) {
        fire_timer = fire_rate;
        var arrow = instance_create_layer(x, y, "Instances", obj_Arrow);  // Replace "ArrowLayer" with the name of your Arrow layer
        arrow.target = nearest_enemy;  // Assign the target enemy to the Arrow
    }
}

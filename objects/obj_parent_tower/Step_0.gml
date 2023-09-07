// Decrease the fire_timer
if (fire_timer > 0) {
    fire_timer--;
}

// Check for enemies within range
var nearest_enemy = instance_nearest(x, y, obj_parent_party);  // Change this to parent object of all warriors/enemies if necessary

if (instance_exists(nearest_enemy) && point_distance(x, y, nearest_enemy.x, nearest_enemy.y) <= range) {
    // Fire at the enemy if the timer has run out
    if (fire_timer <= 0) {
        fire_timer = fire_rate;
        
        var bullet = instance_create_layer(x, y, "Instances", projectile_type);
        bullet.target = nearest_enemy;  // Assuming the bullet object has a 'target' variable
        bullet.direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
        bullet.speed = 10;  // Adjust as needed
    }
}

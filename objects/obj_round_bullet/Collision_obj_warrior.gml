// obj_bullet Collision Event with obj_warrior
if (!has_collided) {
    var collided_warrior = other;

    show_debug_message("Checking for collision...");
    show_debug_message("Collided with: obj_warrior");
    show_debug_message("Instance ID before collision: " + string(collided_warrior.id));
    show_debug_message("Warrior Health Before Collision: " + string(collided_warrior.health));

    collided_warrior.health -= damage;
    show_debug_message("Warrior Health After Collision: " + string(collided_warrior.health));

    if (collided_warrior.health <= 0) {
        instance_destroy(collided_warrior);
    }
    instance_destroy();  
    has_collided = true;  
}


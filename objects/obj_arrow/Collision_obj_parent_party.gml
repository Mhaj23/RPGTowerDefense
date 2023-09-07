if (!has_collided) {  // Check if the collision has already been processed
    var collided_party_member = instance_place(x, y, obj_parent_party);

    // Debug message for collision detection
    show_debug_message("Checking for collision...");

    if (collided_party_member) {
        // Debug message to identify the object that got hit
        show_debug_message("Collided with: " + object_get_name(collided_party_member.object_index));
        
        // NEW: Debug message to check if the collided object is indeed obj_warrior
        if (collided_party_member.object_index == obj_warrior) {
            show_debug_message("Collision is with obj_warrior.");
        } else {
            show_debug_message("Collision is NOT with obj_warrior.");
        }

        // Debug message for health before applying damage
        show_debug_message("Party Member Health Before Collision: " + string(collided_party_member.health));

        // Apply damage
        collided_party_member.health -= damage;

        // Debug message for health after applying damage
        show_debug_message("Party Member Health After Collision: " + string(collided_party_member.health));
        
        if (collided_party_member.health <= 0) {
            instance_destroy(collided_party_member);
        }
        instance_destroy();  // Destroy this arrow
        has_collided = true;  // Set to true so this block won't execute again for the same arrow
    }
}

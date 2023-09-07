// Check for collision with members of the party (which could include warriors)
var collided_party_member = instance_place(x, y, obj_parent_party);

// Debug message for collision detection
show_debug_message("Checking for collision...");

if (collided_party_member) {
    // Debug message for health before applying damage
    show_debug_message("Party Member Health Before Collision: " + string(collided_party_member.health));

    // Apply damage
    collided_party_member.health -= damage;  // Assuming that 'damage' is a variable in obj_arrow and 'health' is in obj_parent_party

    // Debug message for health after applying damage
    show_debug_message("Party Member Health After Collision: " + string(collided_party_member.health));
    
    if (collided_party_member.health <= 0) {
        instance_destroy(collided_party_member);
    }

    instance_destroy();  // Destroy this arrow
}

var collided_warrior = instance_place(x, y, obj_Warrior);
if (collided_warrior) {
    collided_warrior.health -= damage;
    if (collided_warrior.health <= 0) {
        instance_destroy(collided_warrior);
    }
    instance_destroy();
}

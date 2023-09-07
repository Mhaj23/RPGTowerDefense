// Draw the enemy sprite (assuming you have one)
draw_self();

// Draw health bar above the enemy
var bar_width = 50;
var bar_height = 5;
var bar_x = x - bar_width/2;
var bar_y = y - sprite_height/2 - 10;  // 10 units above the enemy sprite

// Draw background of the health bar (e.g., in red)
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);
draw_set_colour(c_green);
// Draw current health (e.g., in green)
var health_percentage = health / 100;  // Assuming 100 is max health
show_debug_message("Warrior Health --- " + string(health));
draw_rectangle(bar_x, bar_y, bar_x + bar_width * health_percentage, bar_y + bar_height, false);

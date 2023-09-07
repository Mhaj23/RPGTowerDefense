// Draw the sprite
draw_sprite(sprite_index, image_index, x, y);

// Calculate the health percentage
var health_percentage = (health / max_health) * 100;

// Determine the color of the health bar
var health_color;
if (health_percentage > 50) {
    health_color = c_green;
} else if (health_percentage > 35) {
    health_color = c_yellow;
} else {
    health_color = c_red;
}

// Draw the health bar
draw_healthbar(x-25, y-50, x+25, y-40, health_percentage, health_color, c_black, c_black, 1, false, false);

// Draw the health text
draw_set_color(c_white); // Set the text color to white
draw_text(x, y-60, string(health)); // Draw the current health as text


// The parameters are as follows:
// x1, y1: The top-left corner of the health bar
// x2, y2: The bottom-right corner of the health bar
// amount: The percentage of health (0 to 100)
// backcol, mincol, maxcol: The background, minimum, and maximum colors
// border: Width of the border (use 0 for no border)
// showback, showborder: Whether to display background and border (true/false)

draw_set_color(c_white);

var txt_y = 20;  // Starting y position for the text

// Show Frank's Y
draw_text(20, txt_y, "Frank Y: " + string(o_Frank_Spade.y));
txt_y += 20;

// Show all table Y positions
var table_instances = instance_number(o_table);
draw_text(20, txt_y, "Tables count: " + string(table_instances));
txt_y += 20;

with (o_table) {
    draw_text(20, txt_y, "Table at Y: " + string(y));
    txt_y += 20;
}

// Show all wall Y positions
var wall_instances = instance_number(o_walls_m);
draw_text(20, txt_y, "Walls count: " + string(wall_instances));
txt_y += 20;

with (o_walls_m) {
    draw_text(20, txt_y, "Wall at Y: " + string(y));
    txt_y += 20;
}


draw_set_color(c_white);

var start_y = 90;
var line_height = 90;

// Show Frank’s depth
draw_text(90, start_y, "Frank depth: " + string(o_Frank_Spade.depth));
start_y += line_height;

// Show all tables’ depths
with (o_table) {
    draw_text(90, start_y, "Table depth: " + string(depth));
    start_y += line_height;
}

// Show all walls’ depths
with (o_walls_m) {
    draw_text(90, start_y, "Wall depth: " + string(depth));
    start_y += line_height;
}

// Show all doors’ depths
with (o_door) {
    draw_text(90, start_y, "door depth: " + string(depth));
    start_y += line_height;
}

// Show all wall middle bottom’ depths
with (o_walls_middle_bottom) {
    draw_text(90, start_y, "o_walls_middle_bottom: " + string(depth));
    start_y += line_height;
}

// Show all drawer depths
with (o_drawer) {
    draw_text(90, start_y, "o_drawer: " + string(depth));
    start_y += line_height;
}




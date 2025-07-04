draw_set_color(c_white);

var txt_y = 20;  // Starting y position for the text

// Show Frank's Y
draw_text(20, txt_y, "Frank Y: " + string(o_Frank_Spade.y));
txt_y += 20;
// Show Frank's x
draw_text(20, txt_y, "Frank x: " + string(o_Frank_Spade.x));
txt_y += 20;

// Show drawer's Y
draw_text(20, txt_y, "Drawer Y: " + string(o_drawer.y));
txt_y += 20;

draw_text(10, 10, "Mouse X: " + string(mouse_x));
draw_text(10, 30, "Mouse Y: " + string(mouse_y));


//// Show all table Y positions
//var table_instances = instance_number(o_table);
//draw_text(20, txt_y, "Tables count: " + string(table_instances));
//txt_y += 20;

//with (o_table) {
//    draw_text(20, txt_y, "Table at Y: " + string(y));
//    txt_y += 20;
//}

//// Show all wall Y positions
//var wall_instances = instance_number(o_walls_m);
//draw_text(20, txt_y, "Walls count: " + string(wall_instances));
//txt_y += 20;

//with (o_walls_m) {
//    draw_text(20, txt_y, "Wall at Y: " + string(y));
//    txt_y += 20;
//}


draw_set_color(c_white);

var start_y = 90;
var line_height = 90;

// Show Frank’s depth
draw_text(90, start_y, "Frank depth: " + string(o_Frank_Spade.depth));
start_y += line_height;

// Show all table2’ depths
with (o_table2) {
    draw_text(45, start_y, "Table2 depth: " + string(depth));
    start_y += line_height;
}

//// Show all walls’ depths
//with (o_walls_m) {
//    draw_text(90, start_y, "Wall depth: " + string(depth));
//    start_y += line_height;
//}



//// Show all wall middle bottom’ depths
//with (o_walls_middle_bottom) {
//    draw_text(90, start_y, "o_walls_middle_bottom: " + string(depth));
//    start_y += line_height;
//}

// Show all drawer depths
with (o_drawer) {
    draw_text(90, start_y, "o_drawer: " + string(depth));
    start_y += line_height;
}

// Show all seat depths
with (o_seat) {
    draw_text(90, start_y, "o_seat: " + string(depth));
    start_y += line_height;
}

// Show all table depths
with (o_table) {
    draw_text(90, start_y, "o_table: " + string(depth));
    start_y += line_height;
}

// Show all documents_1 depths
with (o_documents_1) {
    draw_text(90, start_y, "o_documents_1: " + string(depth));
    start_y += line_height;
}

// Show all o_document_box depths
with (o_document_box) {
    draw_text(90, start_y, "o_document_box: " + string(depth));
    start_y += line_height;
}

// Show all books_2 depths
with (o_books_2) {
    draw_text(90, start_y, "o_books_2: " + string(depth));
    start_y += line_height;
}

// Show all table_2 depths
with (o_table2) {
    draw_text(90, start_y, "o_table_2: " + string(depth));
    start_y += line_height;
}

//draw_text(10, 10, "Mouse Y: " + string(mouse_y));



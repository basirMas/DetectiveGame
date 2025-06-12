/// Reset input
left  = false;
right = false;
up    = false;
down  = false;

/// Get input
if (keyboard_check(ord("A"))) left  = true;
if (keyboard_check(ord("D"))) right = true;
if (keyboard_check(ord("W"))) up    = true;
if (keyboard_check(ord("S"))) down  = true;

/// Calculate movement
hmove = (right - left);
vmove = (down - up);

var move_speed = walk_spd;

if (hmove != 0 || vmove != 0) {
    var _dir = point_direction(0, 0, hmove, vmove);
    hmove = lengthdir_x(move_speed, _dir);
    vmove = lengthdir_y(move_speed, _dir);
    
    facing = _dir;
    
    x += hmove;
    y += vmove;
}

/// Animation selection
if (hmove != 0 || vmove != 0) {
    if (facing >= 45 && facing < 135) {
        sprite_index = spr_FrankSpade_walk_up;
    } else if (facing >= 135 && facing < 225) {
        sprite_index = spr_FrankSpade_walk_left;
    } else if (facing >= 225 && facing < 315) {
        sprite_index = spr_FrankSpade_walk_down;
    } else {
        sprite_index = spr_FrankSpade_walk_right;
    }
    image_speed = 0.2; //12 Frames per second 0.2 frames every game stop
} else {
    // Set idle sprite based on last direction
    if (facing >= 45 && facing < 135) {
        sprite_index = spr_FrankSpade_idle_up;
    } else if (facing >= 135 && facing < 225) {
        sprite_index = spr_FrankSpade_idle_left;
    } else if (facing >= 225 && facing < 315) {
        sprite_index = spr_FrankSpade_idle_down;
    } else {
        sprite_index = spr_FrankSpade_idle_right;
    }
    image_speed = 0;
    image_index = 0;
}
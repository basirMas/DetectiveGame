
function reset_variables() {
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	vmove = 0;
	hmove = 0;

}


function get_input() {
	if keyboard_check(ord("A")) left	=1;
	if keyboard_check(ord("D")) right	=1;
	if keyboard_check(ord("W")) up		=1;
	if keyboard_check(ord("S")) down	=1;
	
	
}

function calc_movement() {
	hmove = right - left;  //instance  variable accesable in other functions
	vmove = down  - up; // 1 up decreases y value by -1  in gamemaker
	
	if hmove !=0 facing = hmove;
	
	if hmove != 0 or vmove != 0 {
		//get direction we are moving
		var _dir = point_direction(0, 0, hmove, vmove);
		
		//calaculate distance we are moving 
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		//add movement to players position
		
		x += hmove;
		y += vmove;
 }
}

function collision() {
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of the collision
	
	x = xprevious;
	y = yprevious;
	
	//get distance we want to move
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	
	//move as far as in x and y before hitting the solid
	repeat(_disx) {
		if !place_meeting(x + sign(_tx - x), y, o_table) x+= sign(_tx - x);
		
	}
	 repeat(_disy) {
		if !place_meeting(x, y + sign(_ty - y), o_table) y+= sign(_tx - y);
	}
	
	
}

function anim() {
	
	if hmove != 0 or vmove != 0 {
		sprite_index = spr_FrankSpade_walk;
} else {
		sprite_index = spr_FrankSpade;
}

}
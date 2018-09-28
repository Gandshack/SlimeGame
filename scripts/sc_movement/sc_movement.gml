//gather inputs
keyLeft = argument0;
keyRight = argument1;
keyUp = argument2;
keyDown = argument3;
keySpace = argument4;
spd = argument5;

xx = (keyRight - keyLeft);
yy = (keyDown - keyUp);

hspd = xx * spd;
vspd = yy * spd;

if hspd != 0 && vspd != 0{
	hspd = xx * (spd * 0.707);
	vspd = yy * (spd * 0.707);
}

//collision checking x
if place_meeting (x + hspd,y,o_wall){
	while!place_meeting(x + sign(hspd),y,o_wall){
		x += sign(hspd);	
	}
	hspd = 0;
}
x += hspd;

//collision checkin y
if place_meeting (x,y + vspd,o_wall){
	while!place_meeting(x,y + sign(vspd),o_wall){
		y += sign(vspd);	
	}
	vspd = 0;
}

y += vspd;


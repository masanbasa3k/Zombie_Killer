/// @description Insert description here
// You can write your code in this editor

cam =  view_camera[0];
follow = obj_player;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

shakeLenght = 0;
shakeMagnitude = 0;
shakeRemain = 0;
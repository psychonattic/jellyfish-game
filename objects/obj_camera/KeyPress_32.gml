/// @description Insert description here
// You can write your code in this editor
//camera_set_view_border(view_camera[0],size_w,size_h)

size_w += 16;
size_h += 12;
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
camera_set_view_size(view_camera[0],size_w,size_h);
//x = room_width/2;
//y = room_height/2
////camera_set_view_pos(view_camera[0],vx/2,vy/2);
//view_xport[0] = -x/2;
//view_yport[0] = -y;


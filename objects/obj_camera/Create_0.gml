/// @description Insert description here
// You can write your code in this editor
camera = camera_create();
size_w = 1024;
size_h = 768;
x = room_width/2;
y = room_height/2
//creates view matrix
//takes the from: matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, xup, yup, zup);
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

//creates projection matrix
var pm = matrix_build_projection_ortho(size_w,size_h,1,1000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);
camera_set_view_pos(view_camera[0],x,y);

view_camera[0] = camera;

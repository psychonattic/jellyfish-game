/// @description created relative to the size of players
// 
var player;
player = instance_nearest(x,y,obj_player);
image_xscale = .4*player.image_xscale;
image_yscale = .4*player.image_yscale;
//image_yscale -= .2;
//image_xscale -= .2;
//player.image_xscale-2 = image_xscale;
///player.image_yscale-2 = image_yscale;
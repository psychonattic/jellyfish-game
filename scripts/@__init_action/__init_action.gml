gml_pragma( "global", "__init_action();");
global.__part_syst=-1;
global.__part_emit=[];
global.__argument_relative=false;
global.__part_type=[];
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
   {
   if gamepad_is_connected(i) global.gp[i] = true else global.gp[i] = false;
   }
global.pad_count = 0;
global.player_num = 0;
global.rounds_to_win = 0;
global.p1_wins = 0;
global.p2_wins = 0;
global.max_speed = 28;
global.winner = "";
global.debug = false;
global.ai = false;
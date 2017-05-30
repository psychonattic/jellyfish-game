draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font_start);
draw_text_transformed(room_width/2,room_height/5,string(global.winner) + " is the winner!",1,1,0);
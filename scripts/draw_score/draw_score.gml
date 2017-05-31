draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(font_start);
draw_text_transformed(room_width/3,room_height-13,"Player One: " + string(global.p1_wins),.5,.5,0);
draw_text_transformed((2/3)*room_width,room_height-13,"Player Two: " + string(global.p2_wins),.5,.5,0);
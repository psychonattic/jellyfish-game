draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font_start);
draw_text_transformed(window_get_width()/2,window_get_height()/5,string(global.winner) + " is the winner!",1,1,0);
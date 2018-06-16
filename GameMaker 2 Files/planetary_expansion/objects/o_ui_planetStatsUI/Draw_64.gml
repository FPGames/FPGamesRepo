/// @description Drawing UI
// You can write your code in this editor

draw_set_halign(fa_center);

draw_set_color(c_white)
draw_set_font(dateFont)
draw_text(1760,23,strDay + "/" + strMonth + "/" + strYear)
draw_text(1805, 90, "FPS = " + string(fps))
draw_set_color(c_gray)
draw_set_font(unitsFont)
draw_text(370,1005,minifyQuantity(units))
draw_text(1770,1005,minifyQuantity(population))
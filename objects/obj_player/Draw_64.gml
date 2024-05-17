for (var i = 0; i < 3; i++) {
    draw_sprite_ext(spr_hearts, 0, 64 + 72 * i, 64, 4, 4, 0, c_white, 1);
}

var text = "[scale,0.75][rainbow][shake]Oh, there once was a hero named [/rainbow][/shake][c_red]Ragnar the Red[/c], who came riding to [c_white]Whiterun[/c] from old Rorikstead! And the braggart did swagger and brandish his blade, as he told of bold battles and the [c_yellow]gold[/c] he had made!~";

draw_sprite_stretched(spr_nineslice, 0, 0, window_get_height() - 288, window_get_width(), 288);

var text_x = 32;
var text_y = window_get_height() - 256;

draw_circle(text_x, text_y, 8, false);
draw_circle_colour(text_x, text_y, 8, c_black, c_black, true);

var scribble_object = scribble(text)
    .starting_format("fnt_game", c_white)
    .sdf_border(c_green, 2)
    .sdf_shadow(c_black, 0.5, 2, 2, 16)
    .wrap(1200);

scribble_object.draw(text_x, text_y, typist);

var bbox = scribble_object.get_bbox(text_x, text_y);

draw_set_colour(c_black);
draw_rectangle(bbox.left, bbox.top, bbox.right, bbox.bottom, true);
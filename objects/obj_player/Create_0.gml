event_inherited();

talking = noone;
talking_t = 0;

running = false;
casting_frame = 0;

audio_play_sound(bgm_idle_with_accordions, 100, true);

typist = scribble_typist();
typist.in(1, 0.5);
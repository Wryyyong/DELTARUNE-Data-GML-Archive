if (change_palette) {
	palette_siner += 0.04;
	palette_index = clamp(palette_index + (sin(palette_siner) / 16), 0.2, 0.8);
}

pal_swap_set(3665, palette_index, false);
draw_self();
pal_swap_reset();

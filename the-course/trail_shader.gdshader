shader_type canvas_item;

uniform float fade_amount : hint_range(0.0, 1.0) = 0.92; // Higher = longer trails
uniform vec4 fade_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);

void fragment() {
	vec4 current = texture(TEXTURE, UV);
	xCOLOR = mix(fade_color, current, fade_amount);
}

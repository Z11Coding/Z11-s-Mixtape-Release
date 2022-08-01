#pragma header

uniform float iTime;

void main() {
	vec2 pixel = vec2(1.0, 1.0) / openfl_TextureSize;
	
	vec2 p = openfl_TextureCoordv;
	p.x += sin(p.y * 25.0 + (iTime * 5.0)) * pixel.x * 10.0;
	
	vec4 color = flixel_texture2D(bitmap, p);
	gl_FragColor = vec4(color.r, color.g * 0.25, color.b, color.a);
}
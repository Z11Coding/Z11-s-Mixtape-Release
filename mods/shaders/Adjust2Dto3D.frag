// outside the quad.
float cross2d( in vec2 a, in vec2 b ) { return a.x*b.y - a.y*b.x; }
vec2 invBilinear( in vec2 p, in vec2 a, in vec2 b, in vec2 c, in vec2 d )
{
    vec2 res = vec2(-1.0);

    vec2 e = b-a;
    vec2 f = d-a;
    vec2 g = a-b+c-d;
    vec2 h = p-a;
        
    float k2 = cross2d( g, f );
    float k1 = cross2d( e, f ) + cross2d( h, g );
    float k0 = cross2d( h, e );
    
    // if edges are parallel, this is a linear equation
    if( abs(k2)<0.001 )
    {
        res = vec2( (h.x*k1+f.x*k0)/(e.x*k1-g.x*k0), -k0/k1 );
    }
    // otherwise, it's a quadratic
	else
    {
        float w = k1*k1 - 4.0*k0*k2;
        if( w<0.0 ) return vec2(-1.0);
        w = sqrt( w );

        float ik2 = 0.5/k2;
        float v = (-k1 - w)*ik2;
        float u = (h.x - f.x*v)/(e.x + g.x*v);
        
        if( u<0.0 || u>1.0 || v<0.0 || v>1.0 )
        {
           v = (-k1 + w)*ik2;
           u = (h.x - f.x*v)/(e.x + g.x*v);
        }
        res = vec2( u, v );
    }
    
    return res;
}

// distance to a line segment
float sdSegment( in vec2 p, in vec2 a, in vec2 b )
{
    p -= a; b -= a;
	return length( p-b*clamp(dot(p,b)/dot(b,b),0.0,1.0) );
}

// simple hash
vec3 hash3( float n ) { return fract(sin(vec3(n,n+3.0,n+7.0))*321.513); }

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
	vec2 p = (2.0*fragCoord-iResolution.xy)/iResolution.y;
    
    // background
    vec3 col = vec3( 0.35 + 0.1*p.y );

    // move points
    vec2 a = cos( 1.11*iTime + vec2(0.1,4.0) );
    vec2 b = cos( 1.13*iTime + vec2(1.0,3.0) );
    vec2 c = cos( 1.17*iTime + vec2(2.0,2.0) );
    vec2 d = cos( 1.15*iTime + vec2(3.0,1.0) );

    // d = c+a-b; // enable this to test parallelograms
    
    // area of the quad
    vec2 uv = invBilinear( p, a, b, c, d );
    
    // inside of quad if uv in [0..1]^2
    if( max( abs(uv.x-0.5), abs(uv.y-0.5))<0.5 )
    {
        col = texture( iChannel0, uv ).xyz;
    }
    
    // quad borders
    float h = 2.0/iResolution.y;
    col = mix( col, vec3(1.0,0.7,0.2), 1.0-smoothstep(h,2.0*h,sdSegment(p,a,b)));
    col = mix( col, vec3(1.0,0.7,0.2), 1.0-smoothstep(h,2.0*h,sdSegment(p,b,c)));
    col = mix( col, vec3(1.0,0.7,0.2), 1.0-smoothstep(h,2.0*h,sdSegment(p,c,d)));
    col = mix( col, vec3(1.0,0.7,0.2), 1.0-smoothstep(h,2.0*h,sdSegment(p,d,a)));
 
    // dither
    col += (1.0/255.0)*hash3(p.x+1920.0*p.y);

	fragColor = vec4( col, 1.0 );
}
void SDF_Equilateral_Triangle_float(float2 uv, float2 offset, float r, out float Out)
{
    const float k = sqrt(3.0);
    float2 p = uv + offset;
    p.x = abs(p.x) - r;
    p.y = p.y + r/k;
    if( p.x+k*p.y>0.0 ) p = float2(p.x-k*p.y,-k*p.x-p.y)/2.0;
    p.x -= clamp( p.x, -2.0*r, 0.0 );
    Out = -length(p)*sign(p.y);
}

void SDF_Equilateral_Triangle_half(half2 uv, half2 offset, half r, out half Out)
{
    const half k = sqrt(3.0);
    half2 p = uv + offset;
    p.x = abs(p.x) - r;
    p.y = p.y + r/k;
    if( p.x+k*p.y>0.0 ) p = half2(p.x-k*p.y,-k*p.x-p.y)/2.0;
    p.x -= clamp( p.x, -2.0*r, 0.0 );
    Out = -length(p)*sign(p.y);
}

void SDF_Equilateral_Triangle_Ring_float(float2 uv, float2 offset, float r, float ring, out float Out)
{
    float shape;
    SDF_Equilateral_Triangle_float(uv, offset, r, shape);
    Out = abs(shape) - ring;
}

void SDF_Equilateral_Triangle_Ring_half(half2 uv, half2 offset, half r, half ring, out half Out)
{
    half shape;
    SDF_Equilateral_Triangle_half(uv, offset, r, shape);
    Out = abs(shape) - ring;
}
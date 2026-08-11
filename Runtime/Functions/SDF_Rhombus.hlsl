void SDF_Rhombus_float(float2 uv, float2 b, out float Out)
{
    float2 p = uv - 0.5;
    b.y = -b.y;
    p = abs(p);
    float h = clamp( (dot(b,p)+b.y*b.y)/dot(b,b), 0.0, 1.0 );
    p -= b*float2(h,h-1.0);
    Out = length(p)*sign(p.x);
}

void SDF_Rhombus_Ring_float(float2 uv, float2 b, float ring, out float Out)
{
    float rhombus;
    SDF_Rhombus_float(uv, b, rhombus);

    Out = abs(rhombus) - ring;
}

void SDF_Rhombus_half(half2 uv, half2 b, out half Out)
{
    half2 p = uv - 0.5;
    b.y = -b.y;
    p = abs(p);
    half h = clamp( (dot(b,p)+b.y*b.y)/dot(b,b), 0.0, 1.0 );
    p -= b*half2(h,h-1.0);
    Out = length(p)*sign(p.x);
}

void SDF_Rhombus_Ring_half(half2 uv, half2 b, float ring, out half Out)
{
    half rhombus;
    SDF_Rhombus_float(uv, b, rhombus);

    Out = abs(rhombus) - ring;
}
    
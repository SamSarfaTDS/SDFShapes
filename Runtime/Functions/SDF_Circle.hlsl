void SDF_Circle_float(float2 uv, float2 offset, float r, out float Out)
{
    float2 p = uv + offset;
    Out = length(p) - r;
}

void SDF_Circle_half(half2 uv, half2 offset, half r, out half Out)
{
    half2 p = uv + offset;
    Out = length(p) - r;
}

void SDF_Circle_Ring_float(float2 uv, half2 offset, float r, float ring, out float Out)
{
    float circle;
    SDF_Circle_float(uv, offset, r, circle);
    Out = abs(circle) - ring;
}

void SDF_Circle_Ring_half(half2 uv, half2 offset, half r, half ring, out half Out)
{
    half circle;
    SDF_Circle_half(uv, offset, r, circle);
    Out = abs(circle) - ring;
}
void SDF_Hexagon_float(float2 uv, float2 offset, float r, out float Out)
{
    float2 p = uv + offset;
    const float3 k = float3(-0.866025404, 0.5, 0.577350269);
    p = abs(p);
    p -= 2.0*min(dot(k.xy,p),0.0)*k.xy;
    p -= float2(clamp(p.x, -k.z*r, k.z*r), r);
    Out = length(p)*sign(p.y);
}

void SDF_Hexagon_half(half2 uv, half2 offset, half r, out half Out)
{
    half2 p = uv + offset;
    const half3 k = half3(-0.866025404, 0.5, 0.577350269);
    p = abs(p);
    p -= 2.0*min(dot(k.xy,p),0.0)*k.xy;
    p -= half2(clamp(p.x, -k.z*r, k.z*r), r);
    Out = length(p)*sign(p.y);
}

void SDF_Hexagon_Ring_float(float2 uv, half2 offset, float r, float thickness, float ring, out float Out)
{
    float hexagon;
    SDF_Hexagon_float(uv, offset, r, hexagon);
    const float capsule = hexagon - thickness;
    Out = abs(capsule) - ring;
}

void SDF_Hexagon_Ring_half(half2 uv, half2 offset, half r, half thickness, half ring, out half Out)
{
    half hexagon;
    SDF_Hexagon_half(uv, offset, r, hexagon);
    const half capsule = hexagon - thickness;
    Out = abs(capsule) - ring;
}
    
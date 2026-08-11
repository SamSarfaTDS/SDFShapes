void SDF_Segment_float(float2 uv, float2 offset, float2 a, float2 b, out float Out)
{
    float2 p = uv + offset;
    float2 pa = p-a;
    float2 ba = b-a;
    float h = clamp( dot(pa,ba)/dot(ba,ba), 0.0, 1.0 );
    Out = length( pa - ba*h );
}

void SDF_Segment_Ring_float(float2 uv, float2 offset, float2 a, float2 b, float thickness, float ring, out float Out)
{
    float segment;
    SDF_Segment_float(uv, offset, a, b, segment);

    float capsule = segment - thickness;
    Out = abs(capsule) - ring;
}

void SDF_Segment_half(half2 uv, half2 offset, half2 a, half2 b, out float Out)
{
    half2 p = uv + offset;
    half2 pa = p-a;
    half2 ba = b-a;
    float h = clamp( dot(pa,ba)/dot(ba,ba), 0.0, 1.0 );
    Out = length( pa - ba*h );
}

void SDF_Segment_Ring_half(half2 uv, half2 offset, half2 a, half2 b, float thickness, float ring, out float Out)
{
    float segment;
    SDF_Segment_float(uv, offset, a, b, segment);

    float capsule = segment - thickness;
    Out = abs(capsule) - ring;
}
    
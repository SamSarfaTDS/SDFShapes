void SDF_RoundBox_float(float2 uv, float2 offset, float2 b, float4 r, out float Out)
{
    float2 p = uv + offset;
    r.xy = (p.x>0.0)?r.xy : r.zw;
    r.x = (p.y>0.0)?r.x : r.y;
    float2 q = abs(p)-b+r.x;
    Out = min(max(q.x,q.y),0.0) + length(max(q,0.0))-r.x; 
}

void SDF_RoundBox_Ring_float(float2 uv, float2 offset, float2 b, float4 r, float ring, out float Out)
{
    float box;
    SDF_RoundBox_float(uv, offset, b, r, box);

    Out = abs(box) - ring;
}

void SDF_RoundBox_half(half2 uv, half2 offset, half2 b, half4 r, out half Out)
{
    half2 p = uv + offset;
    r.xy = (p.x>0.0)?r.xy : r.zw;
    r.x = (p.y>0.0)?r.x : r.y;
    half2 q = abs(p)-b+r.x;
    Out = min(max(q.x,q.y),0.0) + length(max(q,0.0))-r.x;
}

void SDF_RoundBox_Ring_half(half2 uv, half2 offset, half2 b, half4 r, half ring, out half Out)
{
    half box;
    SDF_RoundBox_half(uv, offset, b, r, box);

    Out = abs(box) - ring;
}
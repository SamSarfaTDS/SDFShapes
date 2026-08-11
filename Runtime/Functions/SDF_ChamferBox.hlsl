void SDF_Chamfer_Box_float(float2 uv, float2 offset, float2 b, float chamfer, out float Out)
{
    float2 p = uv + offset;
    p = abs(p)-b;
    p = ( p.y > p.x )? p.yx : p.xy;
    p.y += chamfer;
    const float k = 1.0 - sqrt(2.0);
    if( p.y<0.0 && p.y+p.x*k<0.0 )
    {
        Out = p.x;
        return;
    }

    if( p.x<p.y )
    {
        Out = (p.x+p.y)*sqrt(0.5);
        return;
    }

    Out = length(p);
}

void SDF_Chamfer_Box_half(half2 uv, half2 offset, half2 b, half chamfer, out half Out)
{
    half2 p = uv + offset;
    p = abs(p)-b;
    p = ( p.y > p.x )? p.yx : p.xy;
    p.y += chamfer;
    const half k = 1.0 - sqrt(2.0);
    if( p.y<0.0 && p.y+p.x*k<0.0 )
    {
        Out = p.x;
        return;
    }

    if( p.x<p.y )
    {
        Out = (p.x+p.y)*sqrt(0.5);
        return;
    }

    Out = length(p);
}

void SDF_Chamfer_Box_Ring_float(float2 uv, float2 offset, float2 b, float chamfer, float ringThickness, out float Out)
{
    float box;
    SDF_Chamfer_Box_float(uv, offset, b, chamfer, box);
    Out = abs(box) - ringThickness;
}

void SDF_Chamfer_Box_Ring_half(half2 uv, half2 offset, half2 b, half chamfer, half ringThickness, out half Out)
{
    half box;
    SDF_Chamfer_Box_half(uv, offset, b, chamfer, box);
    Out = abs(box) - ringThickness;
}
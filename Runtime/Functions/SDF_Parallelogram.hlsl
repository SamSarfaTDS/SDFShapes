void SDF_Parallelogram_float(float2 uv, float wi, float he, float sk, out float Out)
{
    float2 p = uv - 0.5;
    float2 e = float2(sk, he);
    p = (p.y < 0.0) ? -p : p;
    float2 w = p - e;
    w.x -= clamp(w.x, -wi, wi);
    float2 d = float2(dot(w, w), -w.y);
    float s = p.x * e.y - p.y * e.x;
    p = (s < 0.0) ? -p : p;
    float2 v = p - float2(wi, 0);
    v -= e * clamp(dot(v, e) / dot(e, e), -1.0, 1.0);
    d = min(d, float2(dot(v, v), wi * he - abs(s)));
    Out = sqrt(d.x) * sign(-d.y);
}

void SDF_Parallelogram_Ring_float(float2 uv, float wi, float he, float sk, float ring, out float Out)
{
    float parallelogram;
    SDF_Parallelogram_float(uv, wi, he, sk, parallelogram);

    Out = abs(parallelogram) - ring;
}

void SDF_Parallelogram_half(half2 uv, half wi, half he, half sk, out half Out)
{
    half2 p = uv - 0.5;
    half2 e = half2(sk, he);
    p = (p.y < 0.0) ? -p : p;
    half2 w = p - e;
    w.x -= clamp(w.x, -wi, wi);
    half2 d = half2(dot(w, w), -w.y);
    half s = p.x * e.y - p.y * e.x;
    p = (s < 0.0) ? -p : p;
    half2 v = p - half2(wi, 0);
    v -= e * clamp(dot(v, e) / dot(e, e), -1.0, 1.0);
    d = min(d, half2(dot(v, v), wi * he - abs(s)));
    Out = sqrt(d.x) * sign(-d.y);
}

void SDF_Parallelogram_Ring_half(half2 uv, half wi, half he, half sk, half ring, out half Out)
{
    half parallelogram;
    SDF_Parallelogram_float(uv, wi, he, sk, parallelogram);

    Out = abs(parallelogram) - ring;
}
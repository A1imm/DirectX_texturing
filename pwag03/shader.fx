cbuffer cbPerObject : register(b0)
{
	float4x4 gWorldViewProj;
};

struct VertexIn
{
	float3 PosL  : POSITION;
	float2 UV : TEXCOORD;
};

struct VertexOut
{
	float4 PosH  : SV_POSITION;
    float2 UV : TEXCOORD;
};

VertexOut VS_Main(VertexIn vin)
{
	VertexOut vout;

	// Transform to homogeneous clip space.
    vout.PosH = mul(float4(vin.PosL, 1.0f), gWorldViewProj);
    vout.UV = vin.UV;

	return vout;
}

Texture2D gTexture1 : register(t0);
Texture2D gTexture2 : register(t1);
SamplerState gSampler : register(s0);

float4 PS_Main(VertexOut pin) : SV_Target
{	
    float4 base = gTexture1.Sample(gSampler, pin.UV);
    float4 logo = gTexture2.Sample(gSampler, pin.UV);

    //float mask = step(0.1f, length(logo.rgb));

    //return base * logo; // blend przez mno¿enie
    //float4 result = lerp(base, logo, mask);
    //return saturate(base + logo);
    return saturate(base - logo);
    //return float4(base.rgb * logo.rgb, 1.0f);
}
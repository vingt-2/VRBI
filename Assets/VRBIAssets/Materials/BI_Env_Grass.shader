// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-9763-OUT,spec-6959-OUT,gloss-2760-OUT,transm-5305-OUT,alpha-4875-R,clip-4875-R,voffset-5228-OUT;n:type:ShaderForge.SFN_Tex2d,id:3432,x:32391,y:32348,varname:node_3432,prsc:2,tex:646ed99e13cf1b348b1bb3a2799fea97,ntxv:0,isnm:False|UVIN-7995-OUT,TEX-9309-TEX;n:type:ShaderForge.SFN_TexCoord,id:2045,x:31473,y:33378,varname:node_2045,prsc:2,uv:1;n:type:ShaderForge.SFN_Tex2d,id:5541,x:31644,y:33378,varname:_node_3432_copy,prsc:2,tex:646ed99e13cf1b348b1bb3a2799fea97,ntxv:0,isnm:False|UVIN-2045-UVOUT,TEX-9309-TEX;n:type:ShaderForge.SFN_Multiply,id:3307,x:32391,y:32516,varname:node_3307,prsc:2|A-3432-RGB,B-9820-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9820,x:32235,y:32550,ptovrint:False,ptlb:Grass Specular Value,ptin:_GrassSpecularValue,varname:node_9820,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2760,x:31979,y:32492,ptovrint:False,ptlb:Grass Gloss Value,ptin:_GrassGlossValue,varname:node_2760,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:1278,x:32710,y:33344,ptovrint:False,ptlb:Deformation Vector,ptin:_DeformationVector,varname:node_1278,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Tex2d,id:9688,x:32710,y:33516,ptovrint:False,ptlb:Deformation Mask,ptin:_DeformationMask,varname:node_9688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5228,x:32974,y:33413,varname:node_5228,prsc:2|A-1278-XYZ,B-9688-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:9309,x:31858,y:32384,ptovrint:False,ptlb:Grass_Diffuse,ptin:_Grass_Diffuse,varname:node_9309,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:646ed99e13cf1b348b1bb3a2799fea97,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:207,x:32090,y:32207,ptovrint:False,ptlb:Grass Tile,ptin:_GrassTile,varname:node_207,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:5146,x:32090,y:32263,varname:node_5146,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:7995,x:32260,y:32207,varname:node_7995,prsc:2|A-207-OUT,B-5146-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4569,x:31860,y:32677,ptovrint:False,ptlb:Dirt_Diffuse,ptin:_Dirt_Diffuse,varname:node_4569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e0b5550dba7a3294abf4d077635905a4,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9763,x:32459,y:32866,varname:node_9763,prsc:2|A-3432-RGB,B-4569-RGB,T-9255-RGB;n:type:ShaderForge.SFN_Tex2d,id:9255,x:31877,y:33229,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_9255,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6959,x:32459,y:32730,varname:node_6959,prsc:2|A-3307-OUT,B-5144-OUT,T-9255-RGB;n:type:ShaderForge.SFN_Multiply,id:5144,x:32050,y:32864,varname:node_5144,prsc:2|A-4569-RGB,B-5879-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5879,x:31894,y:32898,ptovrint:False,ptlb:Dirt_SpecValue,ptin:_Dirt_SpecValue,varname:_GrassSpecularValue_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:4875,x:32011,y:33431,ptovrint:False,ptlb:node_4875,ptin:_node_4875,varname:node_4875,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2045-UVOUT;n:type:ShaderForge.SFN_Vector1,id:5305,x:32337,y:33010,varname:node_5305,prsc:2,v1:0.2;proporder:9820-2760-1278-9688-9309-207-4569-9255-5879-4875;pass:END;sub:END;*/

Shader "Shader Forge/BI_Env_Grass" {
    Properties {
        _GrassSpecularValue ("Grass Specular Value", Float ) = 1
        _GrassGlossValue ("Grass Gloss Value", Float ) = 1
        _DeformationVector ("Deformation Vector", Vector) = (0,0,0,0)
        _DeformationMask ("Deformation Mask", 2D) = "black" {}
        _Grass_Diffuse ("Grass_Diffuse", 2D) = "white" {}
        _GrassTile ("Grass Tile", Float ) = 1
        _Dirt_Diffuse ("Dirt_Diffuse", 2D) = "gray" {}
        _Mask ("Mask", 2D) = "black" {}
        _Dirt_SpecValue ("Dirt_SpecValue", Float ) = 1
        _node_4875 ("node_4875", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float _GrassSpecularValue;
            uniform float _GrassGlossValue;
            uniform float4 _DeformationVector;
            uniform sampler2D _DeformationMask; uniform float4 _DeformationMask_ST;
            uniform sampler2D _Grass_Diffuse; uniform float4 _Grass_Diffuse_ST;
            uniform float _GrassTile;
            uniform sampler2D _Dirt_Diffuse; uniform float4 _Dirt_Diffuse_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Dirt_SpecValue;
            uniform sampler2D _node_4875; uniform float4 _node_4875_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _DeformationMask_var = tex2Dlod(_DeformationMask,float4(TRANSFORM_TEX(o.uv0, _DeformationMask),0.0,0));
                v.vertex.xyz += (_DeformationVector.rgb*_DeformationMask_var.rgb);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _node_4875_var = tex2D(_node_4875,TRANSFORM_TEX(i.uv1, _node_4875));
                clip(_node_4875_var.r - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _GrassGlossValue;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float2 node_7995 = (_GrassTile*i.uv0);
                float4 node_3432 = tex2D(_Grass_Diffuse,TRANSFORM_TEX(node_7995, _Grass_Diffuse));
                float4 _Dirt_Diffuse_var = tex2D(_Dirt_Diffuse,TRANSFORM_TEX(i.uv0, _Dirt_Diffuse));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 specularColor = lerp((node_3432.rgb*_GrassSpecularValue),(_Dirt_Diffuse_var.rgb*_Dirt_SpecValue),_Mask_var.rgb);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 forwardLight = max(0.0, NdotL );
                float node_5305 = 0.2;
                float3 backLight = max(0.0, -NdotL ) * float3(node_5305,node_5305,node_5305);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp(node_3432.rgb,_Dirt_Diffuse_var.rgb,_Mask_var.rgb);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,_node_4875_var.r);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float _GrassSpecularValue;
            uniform float _GrassGlossValue;
            uniform float4 _DeformationVector;
            uniform sampler2D _DeformationMask; uniform float4 _DeformationMask_ST;
            uniform sampler2D _Grass_Diffuse; uniform float4 _Grass_Diffuse_ST;
            uniform float _GrassTile;
            uniform sampler2D _Dirt_Diffuse; uniform float4 _Dirt_Diffuse_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Dirt_SpecValue;
            uniform sampler2D _node_4875; uniform float4 _node_4875_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _DeformationMask_var = tex2Dlod(_DeformationMask,float4(TRANSFORM_TEX(o.uv0, _DeformationMask),0.0,0));
                v.vertex.xyz += (_DeformationVector.rgb*_DeformationMask_var.rgb);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _node_4875_var = tex2D(_node_4875,TRANSFORM_TEX(i.uv1, _node_4875));
                clip(_node_4875_var.r - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _GrassGlossValue;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float2 node_7995 = (_GrassTile*i.uv0);
                float4 node_3432 = tex2D(_Grass_Diffuse,TRANSFORM_TEX(node_7995, _Grass_Diffuse));
                float4 _Dirt_Diffuse_var = tex2D(_Dirt_Diffuse,TRANSFORM_TEX(i.uv0, _Dirt_Diffuse));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 specularColor = lerp((node_3432.rgb*_GrassSpecularValue),(_Dirt_Diffuse_var.rgb*_Dirt_SpecValue),_Mask_var.rgb);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 forwardLight = max(0.0, NdotL );
                float node_5305 = 0.2;
                float3 backLight = max(0.0, -NdotL ) * float3(node_5305,node_5305,node_5305);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 diffuseColor = lerp(node_3432.rgb,_Dirt_Diffuse_var.rgb,_Mask_var.rgb);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * _node_4875_var.r,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _DeformationVector;
            uniform sampler2D _DeformationMask; uniform float4 _DeformationMask_ST;
            uniform sampler2D _node_4875; uniform float4 _node_4875_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                float4 _DeformationMask_var = tex2Dlod(_DeformationMask,float4(TRANSFORM_TEX(o.uv0, _DeformationMask),0.0,0));
                v.vertex.xyz += (_DeformationVector.rgb*_DeformationMask_var.rgb);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _node_4875_var = tex2D(_node_4875,TRANSFORM_TEX(i.uv1, _node_4875));
                clip(_node_4875_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

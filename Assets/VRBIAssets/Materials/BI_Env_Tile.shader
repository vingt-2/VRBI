// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:False,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-2411-OUT,spec-964-OUT,gloss-611-OUT,transm-591-OUT,clip-2608-R;n:type:ShaderForge.SFN_Tex2d,id:2608,x:32227,y:33196,ptovrint:False,ptlb:Alpha Map,ptin:_AlphaMap,varname:node_2608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a84462c42a970f342ac8f0170d76a925,ntxv:0,isnm:False|UVIN-1213-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1213,x:31916,y:33111,varname:node_1213,prsc:2,uv:1;n:type:ShaderForge.SFN_Tex2d,id:8471,x:31869,y:32125,varname:node_3432,prsc:2,tex:646ed99e13cf1b348b1bb3a2799fea97,ntxv:0,isnm:False|TEX-5404-TEX;n:type:ShaderForge.SFN_Multiply,id:7464,x:31869,y:32293,varname:node_7464,prsc:2|A-8471-RGB,B-7788-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7788,x:31653,y:32315,ptovrint:False,ptlb:Grass Spec Pow,ptin:_GrassSpecPow,varname:node_9820,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:5404,x:31336,y:32161,ptovrint:False,ptlb:Grass_Diffuse,ptin:_Grass_Diffuse,varname:node_9309,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:646ed99e13cf1b348b1bb3a2799fea97,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3959,x:31338,y:32454,ptovrint:False,ptlb:Dirt_Diffuse,ptin:_Dirt_Diffuse,varname:node_4569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e0b5550dba7a3294abf4d077635905a4,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Lerp,id:964,x:31937,y:32643,varname:node_964,prsc:2|A-8471-RGB,B-3959-RGB,T-8119-RGB;n:type:ShaderForge.SFN_Tex2d,id:8119,x:31355,y:33006,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_9255,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:2411,x:31937,y:32507,varname:node_2411,prsc:2|A-7464-OUT,B-7006-OUT,T-8119-RGB;n:type:ShaderForge.SFN_Multiply,id:7006,x:31528,y:32641,varname:node_7006,prsc:2|A-3959-RGB,B-1532-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1532,x:31258,y:32673,ptovrint:False,ptlb:Dirt_SpecValue,ptin:_Dirt_SpecValue,varname:_GrassSpecularValue_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:591,x:31815,y:32787,varname:node_591,prsc:2,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:611,x:31704,y:32860,ptovrint:False,ptlb:Grass gloss,ptin:_Grassgloss,varname:node_611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:2608-7788-5404-3959-8119-1532-611;pass:END;sub:END;*/

Shader "Shader Forge/BI_Env_Tile" {
    Properties {
        _AlphaMap ("Alpha Map", 2D) = "white" {}
        _GrassSpecPow ("Grass Spec Pow", Float ) = 1
        _Grass_Diffuse ("Grass_Diffuse", 2D) = "white" {}
        _Dirt_Diffuse ("Dirt_Diffuse", 2D) = "gray" {}
        _Mask ("Mask", 2D) = "black" {}
        _Dirt_SpecValue ("Dirt_SpecValue", Float ) = 1
        _Grassgloss ("Grass gloss", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _AlphaMap; uniform float4 _AlphaMap_ST;
            uniform float _GrassSpecPow;
            uniform sampler2D _Grass_Diffuse; uniform float4 _Grass_Diffuse_ST;
            uniform sampler2D _Dirt_Diffuse; uniform float4 _Dirt_Diffuse_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Dirt_SpecValue;
            uniform float _Grassgloss;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _AlphaMap_var = tex2D(_AlphaMap,TRANSFORM_TEX(i.uv1, _AlphaMap));
                clip(_AlphaMap_var.r - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Grassgloss;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 node_3432 = tex2D(_Grass_Diffuse,TRANSFORM_TEX(i.uv0, _Grass_Diffuse));
                float4 _Dirt_Diffuse_var = tex2D(_Dirt_Diffuse,TRANSFORM_TEX(i.uv0, _Dirt_Diffuse));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 specularColor = lerp(node_3432.rgb,_Dirt_Diffuse_var.rgb,_Mask_var.rgb);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 forwardLight = max(0.0, NdotL );
                float node_591 = 0.2;
                float3 backLight = max(0.0, -NdotL ) * float3(node_591,node_591,node_591);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp((node_3432.rgb*_GrassSpecPow),(_Dirt_Diffuse_var.rgb*_Dirt_SpecValue),_Mask_var.rgb);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _AlphaMap; uniform float4 _AlphaMap_ST;
            uniform float _GrassSpecPow;
            uniform sampler2D _Grass_Diffuse; uniform float4 _Grass_Diffuse_ST;
            uniform sampler2D _Dirt_Diffuse; uniform float4 _Dirt_Diffuse_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Dirt_SpecValue;
            uniform float _Grassgloss;
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
                float4 _AlphaMap_var = tex2D(_AlphaMap,TRANSFORM_TEX(i.uv1, _AlphaMap));
                clip(_AlphaMap_var.r - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Grassgloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 node_3432 = tex2D(_Grass_Diffuse,TRANSFORM_TEX(i.uv0, _Grass_Diffuse));
                float4 _Dirt_Diffuse_var = tex2D(_Dirt_Diffuse,TRANSFORM_TEX(i.uv0, _Dirt_Diffuse));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 specularColor = lerp(node_3432.rgb,_Dirt_Diffuse_var.rgb,_Mask_var.rgb);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 forwardLight = max(0.0, NdotL );
                float node_591 = 0.2;
                float3 backLight = max(0.0, -NdotL ) * float3(node_591,node_591,node_591);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 diffuseColor = lerp((node_3432.rgb*_GrassSpecPow),(_Dirt_Diffuse_var.rgb*_Dirt_SpecValue),_Mask_var.rgb);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _AlphaMap; uniform float4 _AlphaMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv1 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _AlphaMap_var = tex2D(_AlphaMap,TRANSFORM_TEX(i.uv1, _AlphaMap));
                clip(_AlphaMap_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

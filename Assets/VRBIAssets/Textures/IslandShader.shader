// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-808-OUT,spec-5221-OUT,gloss-1582-OUT,normal-686-RGB,emission-5911-OUT;n:type:ShaderForge.SFN_Tex2d,id:4481,x:31959,y:32509,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:af1665ead4df489489588f06cddb8d52,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2539,x:31959,y:32701,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:_Occlusion,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:815acc0597c3c954991f0152987fa260,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5715,x:32198,y:32509,varname:node_5715,prsc:2|A-4481-RGB,B-2539-RGB;n:type:ShaderForge.SFN_Tex2d,id:686,x:31959,y:32903,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aaaf295cbbc380347b8d3313279f1d0b,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:1896,x:32374,y:32675,varname:node_1896,prsc:2|A-5715-OUT,B-1124-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1124,x:32188,y:32724,ptovrint:False,ptlb:Spec Pow,ptin:_SpecPow,varname:_SpecPow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:1582,x:32188,y:32806,ptovrint:False,ptlb:Gloss Pow,ptin:_GlossPow,varname:_GlossPow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Fresnel,id:3383,x:32359,y:33017,varname:node_3383,prsc:2|NRM-8162-OUT,EXP-1969-OUT;n:type:ShaderForge.SFN_Multiply,id:5911,x:32544,y:33141,varname:node_5911,prsc:2|A-8651-RGB,B-3383-OUT;n:type:ShaderForge.SFN_Color,id:8651,x:32359,y:32850,ptovrint:False,ptlb:Fresnel Color,ptin:_FresnelColor,varname:_FresnelColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_NormalVector,id:8162,x:31983,y:33055,prsc:2,pt:True;n:type:ShaderForge.SFN_Color,id:6427,x:32385,y:32353,ptovrint:False,ptlb:Spec Color Boost,ptin:_SpecColorBoost,varname:_SpecColorBoost,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:5221,x:32548,y:32439,varname:node_5221,prsc:2|A-6427-RGB,B-1896-OUT;n:type:ShaderForge.SFN_Color,id:7544,x:32112,y:32251,ptovrint:False,ptlb:Dif Color multiply,ptin:_DifColormultiply,varname:_DifColormultiply,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:5316,x:32562,y:32227,varname:node_5316,prsc:2|A-7544-RGB,B-5715-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1969,x:32179,y:33112,ptovrint:False,ptlb:Fresnel Value,ptin:_FresnelValue,varname:_FresnelValue,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:7604,x:33023,y:32326,varname:node_7604,prsc:2|A-1822-OUT,B-5316-OUT;n:type:ShaderForge.SFN_Tex2d,id:8406,x:32792,y:32045,ptovrint:False,ptlb:usure,ptin:_usure,varname:_usure,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9e2bcedd441395b41821be40c917ccff,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1822,x:33035,y:32094,varname:node_1822,prsc:2|A-6316-RGB,B-8406-RGB;n:type:ShaderForge.SFN_Color,id:6316,x:32963,y:31942,ptovrint:False,ptlb:couleur usure,ptin:_couleurusure,varname:_couleurusure,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:808,x:33517,y:32331,varname:node_808,prsc:2|A-7604-OUT,B-8373-OUT;n:type:ShaderForge.SFN_Tex2d,id:7221,x:33286,y:32050,ptovrint:False,ptlb:dirt,ptin:_dirt,varname:_dirt,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9e2bcedd441395b41821be40c917ccff,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8373,x:33529,y:32099,varname:node_8373,prsc:2|A-2672-RGB,B-7221-RGB;n:type:ShaderForge.SFN_Color,id:2672,x:33457,y:31947,ptovrint:False,ptlb:couleur dirt,ptin:_couleurdirt,varname:_couleurdirt,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:4481-2539-686-1124-1582-8651-6427-7544-1969-8406-6316-7221-2672;pass:END;sub:END;*/

Shader "Shader Forge/IslandShader" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "gray" {}
        _Occlusion ("Occlusion", 2D) = "gray" {}
        _Normal ("Normal", 2D) = "bump" {}
        _SpecPow ("Spec Pow", Float ) = 0.5
        _GlossPow ("Gloss Pow", Float ) = 0.1
        _FresnelColor ("Fresnel Color", Color) = (0.5,0.5,0.5,1)
        _SpecColorBoost ("Spec Color Boost", Color) = (0.5,0.5,0.5,1)
        _DifColormultiply ("Dif Color multiply", Color) = (0.5,0.5,0.5,1)
        _FresnelValue ("Fresnel Value", Float ) = 0
        _usure ("usure", 2D) = "white" {}
        _couleurusure ("couleur usure", Color) = (0.5,0.5,0.5,1)
        _dirt ("dirt", 2D) = "white" {}
        _couleurdirt ("couleur dirt", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecPow;
            uniform float _GlossPow;
            uniform float4 _FresnelColor;
            uniform float4 _SpecColorBoost;
            uniform float4 _DifColormultiply;
            uniform float _FresnelValue;
            uniform sampler2D _usure; uniform float4 _usure_ST;
            uniform float4 _couleurusure;
            uniform sampler2D _dirt; uniform float4 _dirt_ST;
            uniform float4 _couleurdirt;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _GlossPow;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                float3 node_5715 = (_Diffuse_var.rgb*_Occlusion_var.rgb);
                float3 specularColor = (_SpecColorBoost.rgb*(node_5715*_SpecPow));
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _usure_var = tex2D(_usure,TRANSFORM_TEX(i.uv0, _usure));
                float4 _dirt_var = tex2D(_dirt,TRANSFORM_TEX(i.uv0, _dirt));
                float3 diffuseColor = (((_couleurusure.rgb*_usure_var.rgb)+(_DifColormultiply.rgb*node_5715))+(_couleurdirt.rgb*_dirt_var.rgb));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (_FresnelColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelValue));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecPow;
            uniform float _GlossPow;
            uniform float4 _FresnelColor;
            uniform float4 _SpecColorBoost;
            uniform float4 _DifColormultiply;
            uniform float _FresnelValue;
            uniform sampler2D _usure; uniform float4 _usure_ST;
            uniform float4 _couleurusure;
            uniform sampler2D _dirt; uniform float4 _dirt_ST;
            uniform float4 _couleurdirt;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _GlossPow;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                float3 node_5715 = (_Diffuse_var.rgb*_Occlusion_var.rgb);
                float3 specularColor = (_SpecColorBoost.rgb*(node_5715*_SpecPow));
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _usure_var = tex2D(_usure,TRANSFORM_TEX(i.uv0, _usure));
                float4 _dirt_var = tex2D(_dirt,TRANSFORM_TEX(i.uv0, _dirt));
                float3 diffuseColor = (((_couleurusure.rgb*_usure_var.rgb)+(_DifColormultiply.rgb*node_5715))+(_couleurdirt.rgb*_dirt_var.rgb));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-5638-OUT,spec-7667-OUT,gloss-5879-OUT,normal-9289-RGB;n:type:ShaderForge.SFN_Tex2d,id:1706,x:31774,y:32585,ptovrint:False,ptlb:Grass_Diffuse,ptin:_Grass_Diffuse,varname:node_1706,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a4de67839418e71429744fb0d4990686,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5638,x:32415,y:32803,varname:node_5638,prsc:2|A-401-OUT,B-5785-OUT,T-5947-RGB;n:type:ShaderForge.SFN_Tex2d,id:1499,x:32140,y:32874,ptovrint:False,ptlb:Stone D,ptin:_StoneD,varname:_GrassD_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:af1665ead4df489489588f06cddb8d52,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8359,x:32316,y:32976,varname:node_8359,prsc:2|A-1499-RGB,B-2311-RGB;n:type:ShaderForge.SFN_Tex2d,id:2311,x:32140,y:33095,ptovrint:False,ptlb:Stone Occlu,ptin:_StoneOcclu,varname:_StoneD_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:27de7d28ffd3e6242a302f40728bd1bd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5947,x:31839,y:32820,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_5947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9289,x:32524,y:33075,ptovrint:False,ptlb:node_9289,ptin:_node_9289,varname:node_9289,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:7667,x:32561,y:32443,varname:node_7667,prsc:2|A-5638-OUT,B-7278-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7278,x:32257,y:32411,ptovrint:False,ptlb:Specpow,ptin:_Specpow,varname:node_7278,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5879,x:32257,y:32493,ptovrint:False,ptlb:Glossines,ptin:_Glossines,varname:node_5879,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:5785,x:32295,y:32589,varname:node_5785,prsc:2|A-1706-RGB,B-2865-RGB,T-1692-RGB;n:type:ShaderForge.SFN_Tex2d,id:1692,x:32028,y:32636,ptovrint:False,ptlb:Mask2,ptin:_Mask2,varname:_Mask_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2865,x:31774,y:32396,ptovrint:False,ptlb:node_2865,ptin:_node_2865,varname:node_2865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:401,x:32358,y:33203,varname:node_401,prsc:2|A-8359-OUT,B-689-RGB;n:type:ShaderForge.SFN_Color,id:689,x:32128,y:33268,ptovrint:False,ptlb:node_689,ptin:_node_689,varname:node_689,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:1706-1499-2311-5947-9289-7278-5879-1692-2865-689;pass:END;sub:END;*/

Shader "Shader Forge/Test" {
    Properties {
        _Grass_Diffuse ("Grass_Diffuse", 2D) = "white" {}
        _StoneD ("Stone D", 2D) = "white" {}
        _StoneOcclu ("Stone Occlu", 2D) = "white" {}
        _Mask ("Mask", 2D) = "white" {}
        _node_9289 ("node_9289", 2D) = "bump" {}
        _Specpow ("Specpow", Float ) = 0
        _Glossines ("Glossines", Float ) = 0
        _Mask2 ("Mask2", 2D) = "white" {}
        _node_2865 ("node_2865", 2D) = "white" {}
        _node_689 ("node_689", Color) = (0.5,0.5,0.5,1)
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
            uniform sampler2D _Grass_Diffuse; uniform float4 _Grass_Diffuse_ST;
            uniform sampler2D _StoneD; uniform float4 _StoneD_ST;
            uniform sampler2D _StoneOcclu; uniform float4 _StoneOcclu_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _node_9289; uniform float4 _node_9289_ST;
            uniform float _Specpow;
            uniform float _Glossines;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform sampler2D _node_2865; uniform float4 _node_2865_ST;
            uniform float4 _node_689;
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
                float3 _node_9289_var = UnpackNormal(tex2D(_node_9289,TRANSFORM_TEX(i.uv0, _node_9289)));
                float3 normalLocal = _node_9289_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Glossines;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _StoneD_var = tex2D(_StoneD,TRANSFORM_TEX(i.uv0, _StoneD));
                float4 _StoneOcclu_var = tex2D(_StoneOcclu,TRANSFORM_TEX(i.uv0, _StoneOcclu));
                float4 _Grass_Diffuse_var = tex2D(_Grass_Diffuse,TRANSFORM_TEX(i.uv0, _Grass_Diffuse));
                float4 _node_2865_var = tex2D(_node_2865,TRANSFORM_TEX(i.uv0, _node_2865));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(i.uv0, _Mask2));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 node_5638 = lerp(((_StoneD_var.rgb*_StoneOcclu_var.rgb)*_node_689.rgb),lerp(_Grass_Diffuse_var.rgb,_node_2865_var.rgb,_Mask2_var.rgb),_Mask_var.rgb);
                float3 specularColor = (node_5638*_Specpow);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = node_5638;
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
            uniform sampler2D _Grass_Diffuse; uniform float4 _Grass_Diffuse_ST;
            uniform sampler2D _StoneD; uniform float4 _StoneD_ST;
            uniform sampler2D _StoneOcclu; uniform float4 _StoneOcclu_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _node_9289; uniform float4 _node_9289_ST;
            uniform float _Specpow;
            uniform float _Glossines;
            uniform sampler2D _Mask2; uniform float4 _Mask2_ST;
            uniform sampler2D _node_2865; uniform float4 _node_2865_ST;
            uniform float4 _node_689;
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
                float3 _node_9289_var = UnpackNormal(tex2D(_node_9289,TRANSFORM_TEX(i.uv0, _node_9289)));
                float3 normalLocal = _node_9289_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Glossines;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _StoneD_var = tex2D(_StoneD,TRANSFORM_TEX(i.uv0, _StoneD));
                float4 _StoneOcclu_var = tex2D(_StoneOcclu,TRANSFORM_TEX(i.uv0, _StoneOcclu));
                float4 _Grass_Diffuse_var = tex2D(_Grass_Diffuse,TRANSFORM_TEX(i.uv0, _Grass_Diffuse));
                float4 _node_2865_var = tex2D(_node_2865,TRANSFORM_TEX(i.uv0, _node_2865));
                float4 _Mask2_var = tex2D(_Mask2,TRANSFORM_TEX(i.uv0, _Mask2));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 node_5638 = lerp(((_StoneD_var.rgb*_StoneOcclu_var.rgb)*_node_689.rgb),lerp(_Grass_Diffuse_var.rgb,_node_2865_var.rgb,_Mask2_var.rgb),_Mask_var.rgb);
                float3 specularColor = (node_5638*_Specpow);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = node_5638;
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

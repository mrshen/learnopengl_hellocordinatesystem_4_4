#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexture;

//用4个vec4输入构造这个mat4
layout (location = 2) in mat4 model;

out vec2 texCoord;

//uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position = projection * view * model * vec4(aPos, 1.0);
 	texCoord = aTexture;
}
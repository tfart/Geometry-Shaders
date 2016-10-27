#version 330 core

uniform mat4	gView;
uniform mat4	gProj;
uniform mat4	gModel;  

////////////////////////////////////////////////////////////////
//
in vec3			inPosition;
in vec4			inColor;
//
////////////////////////////////////////////////////////////////
//
out Vertex
{
	vec3 position;
	vec4 color;
}   vertex;
//
////////////////////////////////////////////////////////////////
//
void main()
{
	vertex.position = inPosition;
	vertex.color = inColor;

	gl_Position = vec4(inPosition, 1.0);
}
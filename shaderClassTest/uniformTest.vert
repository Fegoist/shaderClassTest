#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

//out vec3 ourColor;
out vec3 ourPosition;

uniform float x_offset;

void main()
{
	//add offset to x & reverse y
    gl_Position = vec4(aPos.x + x_offset, -aPos.y, aPos.z, 1.0);
    ourPosition = aPos;
}
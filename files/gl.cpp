#include <glad/glad.h>
#include <glfw/glfw3.h>
#include <iostream>

void framebuffer_size_callback(GLFWwindow* window, int width,int height);
void key_callback(GLFWwindow* window,int key,int scancode,int action,int mods);
void processInput(GLFWwindow* window);

const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

float rvalue = 0.0f,gvalue = 0.0f,bvalue = 0.0f;

int main()
{
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
    glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);

    //glfw window creation
    GLFWwindow* window = glfwCreateWindow(SCR_WIDTH,SCR_HEIGHT,"my version opengl",NULL,NULL);
    if(window == NULL)
    {
        std::cout<<"Failed to create glfw window"<<std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window,framebuffer_size_callback);
    glfwSetKeyCallback(window,key_callback);
    // glad: load all opengl function pouinter
    if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout<<"Failed to initialize GLAD"<<std::endl;
        return -1;
    }

    //*****************CODE******************


    while(!glfwWindowShouldClose(window))
    {
        glfwSwapBuffers(window);
        glfwPollEvents();

    }


    std::cout<<"hello wordl"<<std::endl;

    glfwTerminate();
    return 0;
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
}

void processInput(GLFWwindow *window)
{
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (glfwGetKey(window, GLFW_KEY_R) == GLFW_PRESS)
    {
        if (rvalue == 0)
        {
            rvalue = 1;
        }else{
            rvalue = 0;
        }
    }
    if (glfwGetKey(window, GLFW_KEY_G) == GLFW_PRESS)
    {
        if (gvalue == 0)
        {
            gvalue = 1;
        }else{
            gvalue = 0;
	    }
    }
    if (glfwGetKey(window, GLFW_KEY_B) == GLFW_PRESS)
    {
        if (bvalue == 0)
        {
            bvalue = 1;
        }else{
            bvalue = 0;
	    }
    }
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
		glfwSetWindowShouldClose(window, true);

}

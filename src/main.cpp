#include "SDL2/SDL.h"
#include <memory>
#include <iostream>
#include "Application.h"

// struct ProgramDestroyer
// {
//     void operator()(Application *p)
//     {
//         SDL_Quit();
//         std::cout << "Application shut down." << '\n';
//     }
// };
// using Program_ptr = std::unique_ptr<Application, ProgramDestroyer>;

int main()
{
    Application program;

    program.loop();
    // program.update();
    // program.loadSurfaceFromFile("../image.bmp");
    // program.updateSurface();

    
    return 0;
}

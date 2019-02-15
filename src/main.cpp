#include "SDL2/SDL.h"
#include <memory>
#include <iostream>
#include "Program.h"

// struct ProgramDestroyer
// {
//     void operator()(Program *p)
//     {
//         SDL_Quit();
//         std::cout << "Program shut down." << '\n';
//     }
// };
// using Program_ptr = std::unique_ptr<Program, ProgramDestroyer>;

int main()
{
    Program program;

    // program.update();
    program.loadSurfaceFromFile("../image.bmp");
    program.updateSurface();

    SDL_Delay(3000);
    return 0;
}

#include "pointers.h"

struct SDLWindowDestroyer
{
    void operator()(SDL_Window *w) const
    {
        SDL_DestroyWindow(w);
        std::cout << "Window destroyed.\n";
    }
};

struct SDLSurfaceDestroyer
{
    void operator()(SDL_Surface *s)
    {
        SDL_FreeSurface(s);
        std::cout << "Surface destroyed.\n";
    }
};
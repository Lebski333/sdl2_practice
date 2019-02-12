#include "SDL2/SDL.h"
#include <memory>
#include <iostream>

constexpr uint16_t SCREEN_WIDTH{800};
constexpr uint16_t SCREEN_HEIGHT{600};

struct SDLWindowDestroyer
{
    void operator()(SDL_Window *w) const
    {
        SDL_DestroyWindow(w);
    }
};

struct SDLSurfaceDestroyer
{
    void operator()(SDL_Surface *s)
    {
        SDL_FreeSurface(s);
    }
};

int main()
{
    if (SDL_Init(SDL_INIT_VIDEO) < 0)
    {
        std::cout << "SDL coudln't initialize. SDL error " << SDL_GetError();
        return -1;
    }

    std::unique_ptr<SDL_Window, SDLWindowDestroyer> window{SDL_CreateWindow("siema",
                                                                            SDL_WINDOWPOS_UNDEFINED,
                                                                            SDL_WINDOWPOS_UNDEFINED,
                                                                            SCREEN_WIDTH,
                                                                            SCREEN_HEIGHT,
                                                                            SDL_WINDOW_SHOWN)};

    if (window == nullptr)
    {
        printf("Couldn't create window. SDL Error: %s", SDL_GetError());
        return -1;
    }

    std::unique_ptr<SDL_Surface, SDLSurfaceDestroyer> screenSurface(SDL_GetWindowSurface(window.get())); // = SDL_GetWindowSurface(window.get());

    if (screenSurface == nullptr)
    {
        printf("chuj SDL Error: %s", SDL_GetError());
        return -1;
    }

    SDL_FillRect(screenSurface.get(), 0, SDL_MapRGB(screenSurface->format, 0xff, 0xff, 0xff));
    SDL_UpdateWindowSurface(window.get());

    SDL_Delay(3000);
    return 0;
}

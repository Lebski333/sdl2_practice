#include "Application.h"

Application::Application() /*:  window{SDL_CreateWindow("siema",
                                             SDL_WINDOWPOS_UNDEFINED,
                                             SDL_WINDOWPOS_UNDEFINED,
                                             SCREEN_WIDTH,
                                             SCREEN_HEIGHT,
                                             SDL_WINDOW_SHOWN)},

                     screenSurface{SDL_GetWindowSurface(window.get())} */
{
    if (SDL_Init(SDL_INIT_VIDEO) < 0)
    {
        std::cout << "SDL coudln't initialize. SDL error " << SDL_GetError() << '\n';
    }
    else
    {
        window.reset(SDL_CreateWindow("siema",
                                      SDL_WINDOWPOS_UNDEFINED,
                                      SDL_WINDOWPOS_UNDEFINED,
                                      SCREEN_WIDTH,
                                      SCREEN_HEIGHT,
                                      SDL_WINDOW_SHOWN));

        if (window == nullptr)
        {
            std::cout << "Couldn't create window. SDL Error: " << SDL_GetError() << '\n';
        }
        else
        {
            screenSurface = SDL_GetWindowSurface(window.get());

            if (screenSurface == nullptr)
            {
                std::cout << "Coudnl't get surface from window. SDL Error: " << SDL_GetError() << '\n';
            }
            else
            {
                event = new SDL_Event();
                running = true;
            }
        }
    }
}

Application::~Application()
{
    SDL_Quit();
    std::cout << "Application shut down." << '\n';
}

void Application::loop()
{
    while (running)
    {
        while (SDL_PollEvent(event))
        {
            update();

            if (event->type == SDL_EventType::SDL_QUIT)
            {
                running = false;
            }
        }
    }
}

void Application::clean()
{
}

void Application::update()
{
    if (loadedSurface == nullptr)
    {
        loadSurfaceFromFile("../image.bmp");
        updateSurface();
    }
    // SDL_FillRect(screenSurface, nullptr, SDL_MapRGB(screenSurface->format, 0xff, 0xff, 0xff));
    // SDL_UpdateWindowSurface(window.get());
    // SDL_Delay(3000);
}

bool Application::loadSurfaceFromFile(const char *path /* , SDL_Surface *sur */)
{
    loadedSurface.reset(SDL_LoadBMP(path));
    if (loadedSurface == nullptr)
    {
        std::cout << "Coudnl't load surface from file. SDL Error: " << SDL_GetError() << '\n';
        return 1;
    }
    else
    {
        {
            SDL_BlitSurface(loadedSurface.get(), nullptr, screenSurface, nullptr);
            return 0;
        }
    }
}

void Application::updateSurface()
{

    SDL_UpdateWindowSurface(window.get());
}
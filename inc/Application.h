#pragma once

// #include "SDL2/SDL.h"
#include <memory>
#include "SDL2/SDL.h"
#include <iostream>
#include <inttypes.h>

// #include "pointers.h"

constexpr uint16_t SCREEN_WIDTH{800};
constexpr uint16_t SCREEN_HEIGHT{600};

struct SDLWindowDestroyer
{
  void operator()(SDL_Window *w)
  {
    SDL_DestroyWindow(w);
    std::cout << "Window destroyed.\n";
  }
};

struct SDLSurfaceDestroyer
{
  void operator()(SDL_Surface *s)
  {
    SDL_FreeSurface(s); // don't use SDL_FreeSurface if surface is taken from SDL_Window
    std::cout << "Surface destroyed.\n";
  }
};

using Window_ptr = std::unique_ptr<SDL_Window, SDLWindowDestroyer>;
using Surface_ptr = std::unique_ptr<SDL_Surface, SDLSurfaceDestroyer>;

class Application
{
public:
  Application();
  ~Application();

  void loop();
  void update();
  void updateSurface();
  void clean();
  bool loadSurfaceFromFile(const char *path /* , SDL_Surface *sur */);
  bool isRunning();

private:
  bool running = false;
  Window_ptr window = nullptr;
  Surface_ptr loadedSurface = nullptr;
  SDL_Surface *screenSurface = nullptr;
  SDL_Event *event = nullptr;

private:
};
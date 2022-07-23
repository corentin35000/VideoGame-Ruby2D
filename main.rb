# Add librairie GameEngine to Ruby2D, require files and modules.
require 'ruby2d'
require './sceneManager'
include ModuleSceneManager


# Start GameLoop to GameEngine
SCREEN_WIDTH = 1536
SCREEN_HEIGHT = 864

set title: "RoR"
set fullscreen: true
set diagnostics: true
set width: SCREEN_WIDTH
set height: SCREEN_HEIGHT

scene_current = ModuleSceneManager::SceneManager.new("Menu")
scene_current.init(SCREEN_WIDTH, SCREEN_HEIGHT)

update do
  scene_current.update(SCREEN_WIDTH, SCREEN_HEIGHT)

  scene_current.draw(SCREEN_WIDTH, SCREEN_HEIGHT)
end

on :key_down do |event|
  puts event.key
  scene_current.key_down(event.key)
end

on :mouse_down do |event|
  scene_current.mouse_down
end
# END to GameLoop to GameEngine


# Draw to window to video game
show
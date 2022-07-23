require './sceneMenu'
require './sceneGameplay'
require './sceneGameover'
include ModuleSceneMenu
include ModuleSceneGameplay
include ModuleSceneGameover

module ModuleSceneManager
  class SceneManager
    attr_accessor :scene_current

    def initialize(scene_current)
      @scene_current = scene_current
      @scene_menu = ModuleSceneMenu::SceneMenu.new
      @scene_gameplay = ModuleSceneGameplay::SceneGameplay.new
      @scene_gameover = ModuleSceneGameover::SceneGameover.new
    end

    def init(screen_width, screen_height)
      @scene_menu.init(screen_width, screen_height)
      @scene_gameplay.init(screen_width, screen_height)
      @scene_gameover.init(screen_width, screen_height)
    end

    def update(screen_width, screen_height)
      case @scene_current
        when "Menu"
          @scene_menu.update(screen_width, screen_height)
        when "Gameplay"
          @scene_gameplay.update(screen_width, screen_height)
        when "Gameover"
          @scene_gameover.update(screen_width, screen_height)
      end
    end

    def draw(screen_width, screen_height)
      case @scene_current
        when "Menu"
          @scene_menu.draw(screen_width, screen_height)
        when "Gameplay"
          @scene_gameplay.draw(screen_width, screen_height)
        when "Gameover"
          @scene_gameover.draw(screen_width, screen_height)
      end
    end

    def key_down(key)
      case @scene_current
        when "Menu"
          @scene_menu.key_down(key)
        when "Gameplay"
          @scene_gameplay.key_down
        when "Gameover"
          @scene_gameover.key_down
      end
    end

    def key_up

    end

    def mouse_down
      case @scene_current
        when "Menu"
          @scene_menu.mouse_down
        when "Gameplay"
          @scene_gameplay.mouse_down
        when "Gameover"
          @scene_gameover.mouse_down
      end
    end
  end
end
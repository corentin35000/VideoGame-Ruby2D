require 'ruby2d'

module ModuleSceneGameover
  class SceneGameover
    def init(screen_width, screen_height)

    end

    def update(screen_width, screen_height)

    end

    def draw(screen_width, screen_height)

    end

    def key_down

    end

    def key_up

    end

    def mouse_down
      # x and y coordinates of the mouse button event
      puts event.x, event.y

      # Read the button event
      case event.button
        when :left
          # Left mouse button pressed down
        when :middle
          # Middle mouse button pressed down
        when :right
          # Right mouse button pressed down
      end
    end
  end
end
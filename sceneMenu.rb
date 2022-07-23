require 'ruby2d'

module ModuleSceneMenu
  class SceneMenu
    def init(screen_width, screen_height)
      # Background Image to MENU
      @background_image = Image.new('./assets/background_menu.jpg', x: 0, y: 0)
      @background_image.add

      # Pigeon PNJ
      @pigeon_image = Sprite.new(
        './assets/pigeon.png',
        clip_width: 140,
        time: 180,
        loop: true,
        x: -180,
        y: 60
      )
      @pigeon2_image = Sprite.new(
        './assets/pigeon.png',
        clip_width: 140,
        time: 180,
        loop: true,
        x: 0,
        y: 100
      )
      @pigeon_image.play
      @pigeon2_image.play

      # Text to MENU
      @booltest = false
      @creer_aventure_text = Text.new('Creer une aventure', x: 550, y: 300, font: './fonts/arcadeclassic.ttf', size: 40, color: 'red')
      @rejoindre_aventure_text = Text.new('Rejoindre une aventure', x: 510, y: 450, font: './fonts/arcadeclassic.ttf', size: 40, color: 'red')
      @quitter_text = Text.new('Quitter', x: 640, y: 600, font: './fonts/arcadeclassic.ttf', size: 40, color: 'red')
      @creer_aventure_text.add
      @rejoindre_aventure_text.add
      @quitter_text.add

      # MUSIC to MENU
      @music_menu = Music.new('./sounds/music_menu.wav', loop: true)
      @music_menu.play
    end

    def update(screen_width, screen_height)
      if  @pigeon_image.x >= screen_width
        @pigeon_image.x = -150
      else
        @pigeon_image.x += 3
      end

      if  @pigeon2_image.x >= screen_width
        @pigeon2_image.x = -150
      else
        @pigeon2_image.x += 3
      end
    end

    def draw(screen_width, screen_height)

    end

    def key_down(key)
      if key == "escape"
        puts "OKK"
      end
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
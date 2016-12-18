class SceneMap
    def initialize
        @player = Player.new(190, 100)
        #if the scale of the picture is changed then use these values to center the sprite
        #270, 180 * 1
        #220, 130 * 2,
        #190, 100 * 3
    end

    def update
        @player.update

        if $window.button_down? char_to_button_id("w") then @player.move end
        if $window.button_down? char_to_button_id("s") then @player.move end
    end

    def draw
        @player.draw
    end

    def button_down(id)
        if id == KbEscape then close end

		if id == char_to_button_id("a") then @player.turn_left end
		if id == char_to_button_id("d") then @player.turn_right end
    end

    def button_up(id)

    end
end

class Player
	def initialize(x, y)

		#you can change 96 to 32 and it rotates
		#Sprites
		@idle = Image.load_tiles($window, "graphics/sprites/idle.png", 288, 288, false)

		@walking = Image.load_tiles($window, "graphics/sprites/Movement.png", 288, 288, false)
		#/Sprites

		#Misc
		@realX = x
		@realY = y
		@angle = 0.0

		@sprite = @idle

		@x = @realX + (@sprite[0].width / 2)
		@y = @realY + (@sprite[0].height)

		@moving = false
		#/Misc
	end

	def update
		@realX = @x - (@sprite[0].width / 2)
		@realY = @y - (@sprite[0].height)

		#Movement
		if @moving
			if !$window.button_down? char_to_button_id("w")
				@moving = false
				@sprite = @idle
			elsif !$window.button_down? char_to_button_id("s")
				@moving = false
				@sprite = @idle
			end
		end
		#/Movement
	end

	#Movement Functions
	def move
		@moving = true
		@sprite = @walking
	end

	def turn_right
		@angle -= 90
	end

	def turn_left
		@angle += 90
	end
	#/Movement Functions

	def draw(z=5)
		#Drawing Player
		frame = milliseconds / 100 % @sprite.size
		#@sprite[frame].draw(@realX, @realY, z) #, 3, 3)
		@sprite[frame].draw_rot(@realX + 145, @realY + 145, z, @angle) #, 0, 0, 3, 3)
		#/Drawing Player
	end
end

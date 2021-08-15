if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
	require("lldebugger").start()
end

require "hsl"

local sti = require "sti"

platform = {}
player = {}

function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	love.graphics.setBackgroundColor(hsl(150, 100, 200))

	map = sti("map/map.lua")

	platform.width = love.graphics.getWidth()
	platform.height = love.graphics.getHeight()

	platform.x = 0
	platform.y = platform.height / 2

	player.x = love.graphics.getWidth() / 2
	player.y = love.graphics.getHeight() / 2

	player.speed = 300

	player.img = love.graphics.newImage('purple.png')

	player.ground = player.y
	
	player.y_velocity = 0

	player.jump_height = -1000
	player.gravity = -2500


	heroImage = love.graphics.newImage("hero.png");
	animation = newAnimation(heroImage, 16, 16, 1)
	animFrameIndex = 1;
	animSpeed = 10; -- Кадров в секунду.
	animCurrentTime = 0
	animDir = 'stand'; -- left | right | stand
end

time = 0

function love.update(dt)
	time = time + dt;

	map:update(dt)

	platform.width = love.graphics.getWidth()
	platform.height = love.graphics.getHeight()

	--animDir = 'stand'
	if love.keyboard.isDown('right') then
		animDir = 'right'
		if player.x < (love.graphics.getWidth() - player.img:getWidth()) then
			player.x = player.x + (player.speed * dt)
			-- local heroObject = map:getObject(2, 'Hero')
			-- heroObject.x = heroObject.x + (player.speed * dt)
			-- map:setObjectCoordinates(2)
		end
	elseif love.keyboard.isDown('left') then
		animDir = 'left'
		if player.x > 0 then 
			player.x = player.x - (player.speed * dt)
		end
	end

	if love.keyboard.isDown('z') then
		if player.y_velocity == 0 then
			player.y_velocity = player.jump_height
		end
	end

	if player.y_velocity ~= 0 then
		player.y = player.y + player.y_velocity * dt
		player.y_velocity = player.y_velocity - player.gravity * dt
	end

	if player.y > player.ground then
		player.y_velocity = 0
    	player.y = player.ground
	end




	if time > animCurrentTime + 1 / animSpeed then
		animCurrentTime = time
		animFrameIndex = animFrameIndex + 1
		if animFrameIndex > 6 then
			animFrameIndex = 1
		end
	end

	-- animation.currentTime = animation.currentTime + dt
	-- if animation.currentTime >= animation.duration then
	-- 	animation.currentTime = animation.currentTime - animation.duration
	-- end
end

function love.draw()
	--love.graphics.scale(3, 3)
	love.graphics.push('all')
	love.graphics.setColor(hsl(50, 100, 100))
	love.graphics.rectangle('fill', platform.x, platform.y, platform.width, platform.height)
	love.graphics.pop()



	local scaleFactor = 3;
	local scaleFactorX = scaleFactor;
	local scaleFactorY = scaleFactor;
	local quad = animation.quads[animFrameIndex + 6];
	
	local scaleDir, offsetX
	if animDir == 'left' then
		scaleDir = -1
		offsetX = 16
	elseif animDir == 'right' then
		scaleDir = 1
		offsetX = 0
	elseif animDir == 'stand' then
		scaleDir = 1
		offsetX = 0
	end
   love.graphics.draw(animation.spriteSheet, quad, player.x, player.y, 0, scaleDir * scaleFactorX, scaleFactorY, offsetX, 16)

	map:draw()
end

function love.resize(w, h)
	map:resize(w, h)
end

function newAnimation(image, width, height, duration)
	local animation = {}
	animation.spriteSheet = image;
	animation.quads = {};

	for y = 0, image:getHeight() - height, height do
		 for x = 0, image:getWidth() - width, width do
			  table.insert(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
		 end
	end

	animation.duration = duration or 1
	animation.currentTime = 0

	return animation
end


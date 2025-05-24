local MENUIMAGE
local canvas
local baseWidth, baseHeight = 256, 240
local scale
local SOUND_START
local MUSIC_MENU
local inMenu = true

function love.load()
    SOUND_START = love.audio.newSource("LLMstart.mp3", "static")
    MUSIC_MENU = love.audio.newSource("LLMmenu.mp3", "static")
    MUSIC_MENU:setLooping(true)
    MUSIC_MENU:play()

    love.graphics.setDefaultFilter("nearest", "nearest")

    MENUIMAGE = love.graphics.newImage("menu1.png")

    canvas = love.graphics.newCanvas(baseWidth, baseHeight)

    local windowWidth, windowHeight = love.graphics.getDimensions()
    scale = math.floor(math.min(windowWidth / baseWidth, windowHeight / baseHeight))
end

function love.update()
    if inMenu and love.keyboard.isDown('return') then
        if not SOUND_START:isPlaying() then
            SOUND_START:play()
            MUSIC_MENU:stop()
            inMenu = false
        end
    end
end

function love.draw()
    love.graphics.setCanvas(canvas)
    love.graphics.clear()

    local scaleX = baseWidth / MENUIMAGE:getWidth()
    local scaleY = baseHeight / MENUIMAGE:getHeight()
    love.graphics.draw(MENUIMAGE, 0, 0, 0, scaleX, scaleY)

    love.graphics.setCanvas()

    love.graphics.scale(scale, scale)
    love.graphics.draw(canvas, 0, 0)
end

function love.draw()
    love.graphics.print("Hello, World!", 400, 300)
end

local player = {
    x = 400,
    y = 500,
    speed = 200,
    sprite = nil
}

function love.load()
    player.sprite = love.graphics.newRectangleShape(0, 0, 32, 48)
end

function love.update(dt)
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed * dt
    elseif love.keyboard.isDown("right") then
        player.x = player.x + player.speed * dt
    end
end

function love.draw()
    love.graphics.print("Hello, World!", 400, 300)
    love.graphics.rectangle("fill", player.x, player.y, 32, 48)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end
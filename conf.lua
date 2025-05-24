function love.conf(t)
    local scale = 3
    t.window.width = 256 * scale
    t.window.height = 240 * scale
    t.window.title = "Lightning Ladder"
    t.window.resizable = false
    t.window.vsync = true
    t.window.highdpi = false
end

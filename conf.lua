function love.conf(t)
    t.window.title = "NES Scaled Game"
    t.window.width = 256 * 3
    t.window.height = 240 * 3
    t.window.resizable = false
    t.window.vsync = true
    t.window.highdpi = false -- Important for consistent scaling
end

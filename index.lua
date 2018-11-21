-- Define local shortcuts to system instances.
local camera = main.application.camera
local mouse = main.application.mouse

-- Set background color to black initially.
camera.clearColor = {0, 0, 0}

-- Track current color.
local colorIsBlack = true

-- Define function to toggle background color between black and white.
local function toggleColor()
    -- Toggle.
    colorIsBlack = not colorIsBlack
    -- Apply.
    if colorIsBlack
    then
        camera.clearColor = {0, 0, 0}
    else
        camera.clearColor = {1, 1, 1}
    end
end

-- Toggle color upon mouse click.
mouse.pressedButtonsChanged:addCallback(
    function()
        -- Detect click.
        if (#mouse.pressedButtons > 0)
        then
            toggleColor()
        end
    end
)

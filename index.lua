-- Define local shortcuts to system instances.
local camera = main.application.camera
local mouse = main.application.mouse

-- Set background color to green initially.
camera.clearColor = {0, 1, 0}

-- Track current color.
local colorIsGreen = true

-- Define function to toggle background color between green and red.
local function toggleColor()
    -- Toggle.
    colorIsGreen = not colorIsGreen
    -- Apply.
    if colorIsGreen
    then
        camera.clearColor = {0, 1, 0}
    else
        camera.clearColor = {1, 0, 0}
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

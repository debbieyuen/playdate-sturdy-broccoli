import "CoreLibs/graphics"
import "CoreLibs/crank"

-- graphics library
local gfx <const> = playdate.graphics
-- player
local pd <const> = playdate

local playerX, playerY = 200, 120
local playerRadius = 10
local int playerSpeed = 3

function pd.update() 
    gfx.clear()
    gfx.drawText("Hello World", 20, 20)
    -- get angle of crank and store it as a local variable
    local change, acceleratedChange = pd.getCrankChange()
    playerX = playerX + acceleratedChange
    gfx.fillCircleAtPoint(playerX, playerY, playerRadius)
end
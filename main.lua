-----------------------------------------------------------------------------------------
--
-- created by Momin Ahmed
-- created on 22nd Feb 2018
-- it solves the area of trapizoid
--
-----------------------------------------------------------------------------------------
--
local baseAOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
baseAOfTrapezoidTextField.id = "baseA textField"

local baseBOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 300, 450, 75 )
baseBOfTrapezoidTextField.id = "baseB textField"

local heightOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 400, 450, 75 )
heightOfTrapezoidTextField.id = "height textField"

local areaOfTrapezoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
areaOfTrapezoidTextField.id = "area textField"
areaOfTrapezoidTextField:setFillColor( 0.5, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local baseAOfTrapezoid
    local baseBOfTrapezoid
    local heightOfTrapezoid
    local areaOfTrapezoid
 
    baseAOfTrapezoid= baseAOfTrapezoidTextField.text
    baseBOfTrapezoid= baseBOfTrapezoidTextField.text
    heightOfTrapezoid= heightOfTrapezoidTextField.text
    areaOfTrapezoid = ( ( baseAOfTrapezoid + baseBOfTrapezoid )/ 2 ) * heightOfTrapezoid  
    -- print( areaOfTrapezoid )
    areaOfTrapezoidTextField.text = "The area is " .. areaOfTrapezoid

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
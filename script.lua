--[[
Very bad MM2 Autofarm, detected BUT still works.
(You can edit/modify the autofarm dw.)
--]]

local CoinContainer = workspace.Normal.CoinContainer -- where the coins is

if CoinContainer then -- checks if it exists
    for _,coins in CoinContainer:GetDescendants() do -- checks everything in the coincontainer
    	if coins:IsA("Part") then -- if the coin is a part, stupid tbh
        	if coins.Name == "Coin_Server" then -- checks if the coins name is Coin_Server, idk but it still works
            	local char = game.Players.LocalPlayer.Character -- your character
            	local targetCoin = coins -- target/goto coin
            	local function createAutofarm() -- creates the autofarm
                	if char.HumanoidRootPart == nil then --check if hpr exists or not
                   		return --returns nothing, so it dont do nothing, but its for safety
                	end
                	char.HumanoidRootPart.CFrame = coins.CoinVisual.CFrame + Vector3.new(0,-0.5,0) --teleports you to te coin
                	if coins.Position == char.HumanoidRootPart.Position / Vector3.new(50,0,50) then --idk i js put something so it dont get detected
                	    return print("Too far") --too far from hpr.
                	else
                	    return print("Close.") --close, makes it hard to be detected
                    end
            wait(1.5) -- waits 1.5 seconds obv
            targetCoin:Remove() --removes the target coin
        end
        createAutofarm()
        end
	end
end
elseif CoinContainer == nil then -- if the coincontainer doesn't exist it returns something.
    return print("Game hasn't started")
end

local TweenService = game:GetService("TweenService")
 
local part = Instance.new("Part")
part.Position = Vector3.new(0, 10, 0)
part.Anchored = true
part.Parent = game.Workspace
 
local tweenInfo = TweenInfo.new(
	2, -- Time
	Enum.EasingStyle.Linear, -- EasingStyle
	Enum.EasingDirection.Out, -- EasingDirection
	-1, -- RepeatCount (when less than zero the tween will loop indefinitely)
	true, -- Reverses (tween will reverse once reaching it's goal)
	0 -- DelayTime
)
 
local tween = TweenService:Create(part, tweenInfo, {Position = Vector3.new(0, 30, 0)})
 
tween:Play()
wait(10)
tween:Cancel() -- cancel the animation after 10 seconds

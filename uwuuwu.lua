local function notify(title,text,dur)
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = title,
            Text = text,
            Duration = dur or 10
        })
    end

notify("verifying", "Please wait..")

wait(5)

game.Players.LocalPlayer:Kick("noob amogus error code 1")

 local function testar()
        local Character = game.Players.LocalPlayer.Character
        local old = Character.HumanoidRootPart.CFrame
        local cam = game.Workspace.Camera
        local timeRemaining = 6.4

        if game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") then
            cam.CameraType = Enum.CameraType.Scriptable
            Character.HumanoidRootPart.CFrame = CFrame.new(-4.91794682, 30.108923, -481.843384, 0.999506295, 0.00190703617, 0.0313607678, -7.76108422e-09, 0.99815625, -0.0606972426, -0.0314186998, 0.0606672801, 0.997663438)
            Character.Head.Transparency = 1 
            Character.Humanoid.JumpPower = 0    
            Character.UpperTorso.Transparency = 1 
            wait(1)
            Character.LowerTorso:Remove()
            Character.HumanoidRootPart.CFrame = old
            wait(.2)
            cam.CameraType = Enum.CameraType.Custom

            while timeRemaining > 0 do
                for i,v in pairs(Character:GetChildren()) do
                    if v.ClassName == "Accessory" then
                        v:Remove()
                    else 
                        if Character.Head:FindFirstChild("face") then
                            Character.Head.face:Remove()
                        else
                            if Character:FindFirstChild("RightUpperLeg") then
                                Character.RightUpperLeg:Remove()
                            else
                                if Character:FindFirstChild("RagdollMe") then
                                    Character.RagdollMe:Remove()
                                else
                                    if Character:FindFirstChild("LeftUpperArm") then
                                        Character.LeftUpperArm:Remove()
                                    else 
                                        if Character:FindFirstChild("RightUpperArm") then
                                            Character.RightUpperArm:Remove()
                                            if Character:FindFirstChild("LeftUpperLeg") then
                                                Character.LeftUpperLeg:Remove()
                                            else
                                                if Character:FindFirstChild("RightUpperLeg") then
                                                    Character.RightUpperLeg:Remove()
                                                else
                                                end
                                            end
                                        end
                                    end
                                end
                                wait()
                                timeRemaining = timeRemaining - 1   
                                wait()
                                Character.HumanoidRootPart.CanCollide = true
                                Character.HumanoidRootPart.CFrame = old
                            end
                        end
                    end
                end
            end
        end
    end

    if game.PlaceId == 9848789324 then
        testar()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("FirstPerson") then
        game.Players.LocalPlayer.Character.FirstPerson:Remove()
    end

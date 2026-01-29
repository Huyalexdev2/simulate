local boot = {}

local hardwareConfig = require(game:WaitForChild("ReplicatedStorage").config.hardware)
local kernix = require(script.Parent:WaitForChild("kernel"):WaitForChild("kernix"))


local function bootKernel(hardware: Folder)
    kernix.kernel(hardware)
end

function boot.start(hardware: Folder)
    print("nux os booting...")

    for _, obj: StringValue in hardware:GetChildren() do
        if hardwareConfig[obj.Name] == "CPU" and hardwareConfig.CPU[obj.Value].type ~= "x86_64" then
            error("CPU type not supported, rebooting...")
        else
            bootKernel()
        end
    end
end
return boot
local hardwareConfig = require(game:WaitForChild("ReplicatedStorage").config.hardware)
local hardwareFolder: Folder = workspace:WaitForChild("total"):WaitForChild("hardware")
local osConfig = require(game:WaitForChild("ReplicatedStorage").config.os)
local osType: StringValue = workspace:WaitForChild("total"):WaitForChild("OS")



function boot(name: string)
    for k, os in osConfig do
        if k == name then
            print("grus starting boot os: " ..name)
            local boot = require(os.bootPath)
            boot.start(hardwareFolder)
        else
            error("not found os, start safety reboot")
        end
    end
end

boot(osType.Value)
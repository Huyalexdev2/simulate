local kernix = {}

local kernel = {
    keyboard = true,
    mouse = true,
    filesystem = true,
    network = true,
    bluetooth = true,
    audio = true,
    GPU = true

}

function kernix.kernel(hardware: Folder)
    print("hardware checking...")
    for _, obj: StringValue in hardware:GetChildren() do
        print("[GOOD]: " ..obj.Name.. " - " ..obj.Value)
        task.wait(0.1)
    end

    print("[LOADING]: loading kernix and driver...")


    for k, v in kernel do
        if v then
            print("[GOOD]: LOADED DRIVER: " ..k.. " SUCCESSFULLY")
        else
            print("[WARNING]: DRIVER: " ..k.. " NOT FOUND, SOME FEATURES MAY NOT WORK")
        end
        task.wait(0.1)
    end

    print("[GOOD]: Kernix and driver successfully loaded, starting loading userland...")

    task.wait(1)
    print("welcome to Nux OS!")
    
end

return kernix
return {
    ["nux"] = {
        version = 1,
        kernel = "Kernix 0.1, beta version 'NIX license confirmed'",
        kernel_bp = "aGFwcGVuZWRiYXRwYXJ0eWFsb25lZmVldHN1Z2dlc3R0b3BpY21vdXRoZGF3bnN1Y2g=",
        bootloader = "grus",
        active = false,
        requirments = {
            cpu_type = "x86_64",
            minimum_ram = 148,
            minimum_storage = 4192
        },
        bootPath = game.ServerScriptService.Server.os.nux.boot
    }
}
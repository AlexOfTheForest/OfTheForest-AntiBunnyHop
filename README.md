# FiveM Anti-Bunnyhop Script

![FiveM](https://img.shields.io/badge/FiveM-OfTheForest--AntiBunny-purple.svg)  
A lightweight and effective **anti-bunnyhop script** for FiveM that prevents players from continuously jumping while sprinting or running by applying a ragdoll effect after a configurable number of jumps.

## Features
- **Prevents Bunnyhopping:** Detects repeated jumps while the player is running or sprinting and ragdolls them.
- **Configurable:** You can customize the jump threshold before ragdolling.
- **Optimized for Performance:** Minimal resource usage with smart wait intervals.

## Installation

1. **Clone the repository** or [download it as a ZIP](https://github.com/AlexOfTheForest/oftheforest_antibunny/archive/refs/heads/main.zip) and extract it to your FiveM server resources folder.
    ```
    resources/
    ├── oftheforest_antibunny/
    │   ├── fxmanifest.lua
    │   └── client.lua
    ```

2. **Add the resource to your `server.cfg`** by adding the following line:
    ```bash
    start oftheforest_antibunny
    ```

3. **Optional Configuration**:
    - Open the `client.lua` file and modify the `JumpThreshold` variable to control how many jumps are allowed before ragdolling the player.
    ```lua
    -- CONFIG: You can change "JumpThreshold" from 10 to 30 (Recommended: 15)
    local JumpThreshold = 15
    ```

4. **Restart your server** or run the command below to load the resource:
    ```bash
    restart oftheforest_antibunny
    ```

## Configuration

You can change the number of jumps before ragdolling by editing the `JumpThreshold` variable in `client.lua`. The default is 15 jumps.

```lua
local JumpThreshold = 15

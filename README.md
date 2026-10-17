# Pokémon Survivor Burst - Linux Native Port

This repository provides a Linux native port and automated installer for **Pokémon Survivor Burst** (v9.0.3+) using the [mkxp-z](https://github.com/mkxp-z/mkxp-z) engine.

Wine / Proton is **NOT** required. The game runs natively on Linux with hardware-accelerated Vulkan / OpenGL.

## Features
- **Native execution** 
- **Vulkan / OpenGL** hardware acceleration.
- **Font Fix Plugin** for Linux: Fixes font clipping and vertical squishing on Linux.
- **Automated setup**: Installs game fonts and creates desktop launcher shortcut.

## Quick Install (One Command)
Run the installer script:
```bash
./install.sh
```

## Manual Setup
1. Download the Windows release of Pokémon Survivor Burst.
2. Extract the Enigma Virtual Box archive (or use `evbunpack`).
3. Copy `mkxp-z.x86_64`, `mkxp.json`, and `Plugins/HotFixes/999_Linux_Font_Fix` into the game folder.
4. Install the fonts from `Fonts/` into `~/.local/share/fonts/`.
5. Run `./launch.sh`.

## Credits
- **Game Developer:** Clessio (ClessioTV)
- **Engine:** mkxp-z (Roza / Ancurio)
- **Framework:** Pokémon Essentials (Flameguru, Poccil, Maruno)
- **Linux Port & Fixes:** Configured for native Linux / Wayland

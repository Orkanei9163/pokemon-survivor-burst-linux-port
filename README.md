# Pokémon Survivor Burst - Linux Native Port           
                                                           
    A native Linux porting kit and automated installer for 
  **Pokémon Survivor Burst** (v9.0.3+) powered by the      
  [mkxp-z](https://github.com/mkxp-z/mkxp-z) engine.       
                                                           
    **Wine / Proton is NOT required.** The game runs       
  natively with hardware-accelerated Vulkan / OpenGL       
  rendering on both X11 and Wayland.                       
                                                           
    ---                                                    
                                                           
    ## Features                                            
    - **100% Native Linux Binary:** Zero Wine / Proton     
  overhead; smooth frame rates and low latency.            
    - **Wayland & X11 Support:** Works out of the box on   
  modern Wayland compositors (Hyprland, Sway, GNOME, KDE). 
    - **Custom Linux Font Fix Plugin:** Resolves Pokémon   
  Essentials v21 font clipping and vertical squishing on   
  mkxp-z.                                                  
    - **Audio Support:** Full BGM/BGS audio playback using 
  integrated SoundFont (`soundfont.sf2`).                  
    - **Desktop Integration:** Automatically installs game 
  fonts to `~/.local/share/fonts` and registers a desktop  
  launcher entry.                                          
    - **DMCA Clean:** Contains **NO** proprietary Pokémon  
  assets, graphics, audio, or game data files.             
                                                           
    ---                                                    
                                                           
    ## Dependencies                                        
                                                           
    Most modern Linux distributions already include these, 
  but make sure you have the required runtime libraries    
  installed:                                               
                                                           
    - **Arch Linux / Manjaro:**                            
      ```bash                                              
      sudo pacman -S sdl2 openal libvorbis libogg mesa     
                                                           
  • Ubuntu / Debian / Pop!_OS:                             
    sudo apt install libsdl2-2.0-0 libopenal1              
  libvorbisfile3                                           
                                                           
  • Fedora:                                                
    sudo dnf install SDL2 openal-soft libvorbis            
                                                           
  ──────                                                   
  ## Installation Guide                                    
                                                           
  Because Pokémon Survivor Burst is distributed as a       
  Windows Enigma Virtual Box executable, you need to       
  extract the game's assets first.                         
                                                           
  ### Step 1: Download the Game                            
                                                           
  Download the official Windows release of Pokémon Survivor
  Burst from the developer's official channels (e.g.,      
  PokéCommunity, EeveeExpo, or Discord).                   
                                                           
  ### Step 2: Unpack the Game Files                        
                                                           
  The Windows .exe is packed with Enigma Virtual Box. You  
  can easily unpack it using the open-source evbunpack     
  tool:                                                    
                                                           
    # Install evbunpack via pip                            
    pip install evbunpack                                  
                                                           
    # Extract the Windows .exe to your preferred games     
  folder                                                   
    python3 -m evbunpack "Pokemon Survivor Burst.exe"      
  "$HOME/Applications/PokemonSurvivorBurst"                
                                                           
  Verify that the target folder now contains Data/,        
  Graphics/, Audio/, and Plugins/.                         
                                                           
  ### Step 3: Apply the Linux Port Kit                     
                                                           
  Clone this repository and run the installer:             
                                                           
    git clone https://github.com/Orkanei9163/pokemon-      
  survivor-burst-linux-port.git                            
    cd pokemon-survivor-burst-linux-port                   
                                                           
    # If you installed the game to the default             
  ~/Applications/PokemonSurvivorBurst:                     
    ./install.sh                                           
                                                           
    # Or specify a custom game folder:                     
    ./install.sh /path/to/your/PokemonSurvivorBurst        
                                                           
  The installer will:                                      
                                                           
  1. Copy the native mkxp-z 64-bit engine and pre-         
  configured mkxp.json.                                    
  2. Apply the Linux font alignment hotfix plugin.         
  3. Install game fonts to ~/.                             
  local/share/fonts/PokemonSurvivorBurst/.                 
  4. Create a launcher script in ~/.local/bin/pokemon-     
  survivor-burst.                                          
  5. Add a desktop shortcut to your application menu.      
  ──────                                                   
  ## Launching the Game                                    
                                                           
  You can start the game in two ways:                      
  
  • Application Menu: Search for Pokémon Survivor Burst in 
  your desktop launcher (Rofi, Wofi, GNOME, etc.).         
  • Terminal: Run:
    pokemon-survivor-burst
  
  ──────
  ## Troubleshooting
  
  • Squished or missing text: Make sure font cache was     
  refreshed (fc-cache -f ~/.local/share/fonts).            
  • Save files location: Saved games are stored in:        
  ~/.local/share/Pokemon Survivor Burst/
  • Fullscreen toggle: Press Alt + Enter or F11.           
  ──────
  ## Credits & Acknowledgements
  
  • Game Developer: Clessio https://twitter.com/ClessioTV  
  • Game Framework: Pokémon Essentials
  https://essentialsengine.miraheze.org/ (Flameguru, Poccil,
  Maruno)
  • Native Engine: mkxp-z https://github.com/mkxp-z/mkxp-z 
  (Roza, Ancurio)
  • Port & Font Fix: Linux packaging and mkxp-z integration
  kit by Orkanei9163.
  ──────
  ## Disclaimer
  
  This repository is an unofficial porting helper tool. It 
  does not distribute or host any copyrighted Pokémon      
  assets, artwork, music, or proprietary game data files.  
  All Pokémon trademarks and copyrights belong to Nintendo,
  Creatures Inc., and GAME FREAK inc.
  EOF

#!/bin/bash
set -e

DIR="$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" && pwd)"
TARGET_DIR="${1:-$HOME/Applications/PokemonSurvivorBurst}"

echo "=== Pokémon Survivor Burst Linux Native Port Installer ==="
echo "Target directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

# Install fonts to user fonts directory
if [ -d "$TARGET_DIR/Fonts" ]; then
    echo "Installing fonts to ~/.local/share/fonts/PokemonSurvivorBurst/..."
    mkdir -p "$HOME/.local/share/fonts/PokemonSurvivorBurst"
    cp -u "$TARGET_DIR/Fonts"/*.ttf "$HOME/.local/share/fonts/PokemonSurvivorBurst/" 2>/dev/null || true
    fc-cache -f "$HOME/.local/share/fonts/" 2>/dev/null || true
fi

# Copy native engine and config
echo "Copying native mkxp-z engine and patches..."
cp -f "$DIR/mkxp-z.x86_64" "$TARGET_DIR/"
cp -f "$DIR/mkxp.json" "$TARGET_DIR/"
cp -f "$DIR/launch.sh" "$TARGET_DIR/"
cp -f "$DIR/soundfont.sf2" "$TARGET_DIR/"
cp -rf "$DIR/scripts" "$TARGET_DIR/"
cp -rf "$DIR/stdlib" "$TARGET_DIR/"

mkdir -p "$TARGET_DIR/Plugins/HotFixes/999_Linux_Font_Fix"
cp -f "$DIR/Plugins/HotFixes/999_Linux_Font_Fix/001_Font_Fix.rb" "$TARGET_DIR/Plugins/HotFixes/999_Linux_Font_Fix/"

chmod +x "$TARGET_DIR/launch.sh" "$TARGET_DIR/mkxp-z.x86_64"

# Create symlink in ~/.local/bin
mkdir -p "$HOME/.local/bin"
ln -sf "$TARGET_DIR/launch.sh" "$HOME/.local/bin/pokemon-survivor-burst"

# Create desktop entry
mkdir -p "$HOME/.local/share/applications"
ICON_PATH="$TARGET_DIR/Graphics/MODTS/logo1.png"
[ -f "$TARGET_DIR/icon.png" ] && ICON_PATH="$TARGET_DIR/icon.png"

cat << DESKTOP > "$HOME/.local/share/applications/pokemon-survivor-burst.desktop"
[Desktop Entry]
Name=Pokémon Survivor Burst
Comment=Vampire Survivors style Pokémon fangame
Exec=$HOME/.local/bin/pokemon-survivor-burst
Icon=$ICON_PATH
Terminal=false
Type=Application
Categories=Game;
Keywords=pokemon;survivor;burst;game;
StartupNotify=true
DESKTOP

update-desktop-database "$HOME/.local/share/applications/" 2>/dev/null || true

echo "=== Setup complete! ==="
echo "Launch with: pokemon-survivor-burst"

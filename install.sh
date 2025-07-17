echo "Building yay... (AUR)"
sudo pacman -Syu --noconfirm && sudo pacman -S --noconfirm base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
echo "Yay installed!"

echo "Some packages"
sudo pacman -S zip lsd
sudo pacman -S telegram-desktop fastfetch 
sudo pacman -S fortune-mod cowsay cava
sudo pacman -S playerctl
echo "Ended"

echo "Dropping all files in their paths!"

echo "Installing waybar..."
cd ~
cd .config/
mkdir waybar
rm -rf waybar/
mkdir waybar
cp -r ~/AviDots/.config/waybar/ ~/.config/waybar/
echo "Installed!"

echo "Installing foot config..."
cd ~
cd .config/
mkdir foot
rm -rf foot/
mkdir foot
cp -r ~/AviDots/.config/foot/ ~/.config/foot/
echo "Installed!"

echo "Installing woofi config..."
cd ~
cd .config/
mkdir woofi
rm -rf woofi/
mkdir woofi
cp -r ~/AviDots/.config/woofi/ ~/.config/woofi/
echo "Installed!"

echo "Installing hyprland configs..."
cd ~
cd .config/
mkdir hypr
rm -rf hypr/
mkdir hypr
cp -r ~/AviDots/.config/hypr/ ~/.config/hypr/
echo "Installed!"

echo "Installing zsh..."
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo "ZSH Installed!"

echo "Installing zsh configs..."
cd ~
rm -rf .zshrc
rm -rf .p10k.zsh
rm -rf .oh-my-zsh

cp ~/AviDots/zsh/.zshrc ~/
cp ~/AviDots/zsh/.p10k.zsh ~/
# cp -r ~/AviDots/zsh/.oh-my-zsh ~/

echo "Installed!"

echo "Installing wallpapers..."
cd ~

cp -r ~/AviDots/wallpapers/ ~/Pictures/

echo "Installed!"


cd ~
sh scripts/stop_paper.sh
sh scripts/start_paper.sh
sh scripts/reload_waybar.sh
#! /bin/zsh

repodir=${0:a:h}

mkdir ~/code
mkdir ~/desktop
mkdir ~/documents
mkdir ~/downloads
mkdir ~/music
mkdir ~/pictures
mkdir ~/videos

rsync -rv $repodir/.config ~/
rsync -rv $repodir/.local ~/
rsync -rv $repodir/.wallpapers ~/
rsync -v $repodir/.zshenv ~/
rsync -v $repodir/.zshrc ~/
rsync -v $repodir/.Xresources ~/

feh --bg-fill ~/.wallpapers/wallpaper.png

printf "name (used for git): "
read name
printf "email (used for git): "
read email

git config --global user.name $name
git config --global user.email $email

mkdir ~/.local/third_party
git clone https://git.suckless.org/slock ~/.local/third_party/slock
rsync -v $repodir/.other/slock/config.def ~/.local/third_party/slock/
sudo make -C ~/.local/third_party/slock clean install

# Catppuccin Cursors (https://github.com/catppuccin/cursors)
mkdir ~/.icons
mkdir ~/.icons/catppuccin-mocha-dark-cursors
wget --output-document ~/.icons/cursors.zip https://github.com/catppuccin/cursors/releases/download/v2.0.0/catppuccin-mocha-dark-cursors.zip
unzip ~/.icons/cursors.zip -d ~/.icons/
rm ~/.icons/cursors.zip

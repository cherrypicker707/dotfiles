#! /bin/zsh

repodir=${0:a:h}

rsync -rv $repodir/.config ~/
rsync -rv $repodir/.local ~/
rsync -rv $repodir/.wallpapers ~/
rsync -v $repodir/.zshenv ~/
rsync -v $repodir/.zshrc ~/

feh --bg-fill ~/.wallpapers/wallpaper.png

printf "name (used for git): "
read name
printf "email (used for git): "
read email

git config --global user.name $name
git config --global user.email $email

mkdir ~/.local/third_party
git clone https://git.suckless.org/slock ~/.local/third_party/slock/
rsync -v $repodir/.other/slock/config.def ~/.local/third_party/slock/
sudo make -C ~/.local/third_party/slock clean install

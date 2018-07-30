# .files

### User crontab:
```
* * * * *       /home/neil/dotfiles/check-battery
*/10 * * * *    /home/neil/dotfiles/repo-update
*/10 * * * *    /home/neil/dotfiles/.i3/scripts/status-icanhazip
*/5 * * * *     /home/neil/dotfiles/.i3/scripts/status-weather
0 8 * * *	    mpc stop && mpc shuffle && mpc play
```

### Root crontab:
```
0 * * * *      /home/neil/dotfiles/.i3/scripts/status-apt update
*/5 * * * *    /home/neil/dotfiles/.i3/scripts/status-apt noupgrade
0 * * * *      apt-get clean
```

### Symlinks used:
```
.bashrc -> dotfiles/.bashrc
.i3 -> dotfiles/.i3
.inputrc -> dotfiles/.inputrc
.moc -> dotfiles/.moc
.vim -> dotfiles/.vim
.vimrc -> dotfiles/.vimrc
documents -> Documents/
downloads -> Downloads/
images -> Pictures
.config/compton.conf -> dotfiles/.config/compton.conf
.config/xfce4/terminal -> dotfiles/.config/xfce4/terminal
.mpd -> dotfiles/.mpd
.mpdconf -> .mpd/mpd.conf
.oh-my-zsh -> dotfiles/.oh-my-zsh
.rtorrent.rc -> dotfiles/.rtorrent.rc
.thunderbird -> /home/neil/.icedove
.zshrc -> dotfiles/.zshrc
.Xdefaults -> dotfiles/.Xdefaults
.profile -> dotfiles/.profile
```

### Other interesting stuff
* Icons: [papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/)
* Wallpaper: [adapta-backgrounds](https://github.com/adapta-project/adapta-backgrounds)
* GTK theme: [adapta-gtk-theme](https://github.com/adapta-project/adapta-gtk-theme)
* Application launcher: [rofi](https://github.com/DaveDavenport/rofi)
* Darken browser: [darkreader](https://github.com/darkreader/darkreader) [ShadowFox](https://github.com/overdodactyl/ShadowFox)
* WM: [i3-gaps](https://github.com/Airblader/i3) [Installer](https://github.com/maestrogerardo/i3-gaps-deb)

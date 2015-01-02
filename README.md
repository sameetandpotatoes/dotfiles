dotfiles
========

All of my customizations, including the zsh shell, aliases, themes, and plugins.

Preview
========
**1. Terminal Prompt (Modified powerline.zsh-theme)**
![ScreenShot](https://raw.github.com/sameetandpotatoes/dotfiles/master/Pictures/prompt.png)
Features:
 - Displays current working directory (last two directories)
 - Displays Git branch status
 - Displays current date and time
 - Displays status code of previous command and time (if there was an error)

 Note: All of the above features (including colors) can be configured within the zsh theme, if you choose.

Vim
=======


    Solarized Dark vim theme
    Pathogen bundler
    Plugins:
        Bclose
        Buffergator
        Ctrip
        Easymotion
        Gist
        Gundo
        Indent-Object
        Matchit
        Multiple_Cursors
        NERDtree
        Sensible
        Snipmate
        Surround
        Syntastic
        Tabular
        Tagbar
        Vroom
        Zoomwin

Set Up
========

1. `git clone http://github.com/sameetandpotatoes/dotfiles ~/dotfiles`
2. `cd ~/dotfiles`
3. `sh install.sh`
4. If you choose to use my theme, please copy `powerline.zsh-theme` to ~./oh-my-zsh/themes with this command:
5. cp `powerline.zsh-theme ~/.oh-my-zsh/themes/`
6. If using iTerm2 (you should be), you can click the font to install it in OS X Fontbook, and then enable it within iTerm2.
7. Close and reopen iTerm2 to see the effects!

[![endorse](https://api.coderwall.com/sameetandpotatoes/endorsecount.png)](https://coderwall.com/sameetandpotatoes)

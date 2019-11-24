# zsh-sudoSwitch

automatically add and remove sudo to the beginning of the current command or the last command with simple short cut 
## DEMO
![sudoSwitch Demo](https://github.com/newaaa41/zsh-sudoSwitch/blob/master/demo.gif?raw=true)
## INSTALLATION

### Using [zplug](https://github.com/b4b4r07/zplug)

```zsh
zplug "newaaa41/zsh-abbrnewaaa41/zsh-sudoSwitch"
```

Alias settings are written after `zplug load`.

### Using [zpluging](https://github.com/zdharma/zplugin)

```zsh
zplugin light newaaa41/zsh-abbrnewaaa41/zsh-sudoSwitch
```

## USAGE
to add or remove sudo to the beginning of the current command use the shorcut  <ESC><ESC>
 you can remap sudoSwitch to another shortcut by adding the next command to your ``` .zshrc ```
 
 ```zsh
bindkey ';;' sudoSwitch
```
this command will allow you to use sudoSwitch by pressing <semicolon> twice
 
  

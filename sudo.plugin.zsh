#                _      ____          _ _       _     
#  ___ _   _  __| | ___/ ___|_      _(_) |_ ___| |__  
# / __| | | |/ _` |/ _ \___ \ \ /\ / / | __/ __| '_ \ 
# \__ \ |_| | (_| | (_) |__) \ V  V /| | || (__| | | |
# |___/\__,_|\__,_|\___/____/ \_/\_/ |_|\__\___|_| |_|
#
# ------------------------------------------------------------------------------
# Description
# -----------
#
# automatically add and remove sudo to the beginning of the current command or the last command with simple short cut 
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
# * Ali Alrabeei <newaaa4@gmail.com>
#
# ------------------------------------------------------------------------------
# vession
# -----------
#
# 0.1.0 beta
#
# ------------------------------------------------------------------------------

sudo-cmd() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        BUFFER="${BUFFER#sudo }"
    else
        BUFFER="sudo $BUFFER"
    fi
}
zle -N sudo-cmd
bindkey -M emacs '\e\e' sudo-cmd
bindkey -M vicmd '\e\e' sudo-cmd
bindkey -M viins '\e\e' sudo-cmd
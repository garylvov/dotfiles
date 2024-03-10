# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/garylvov/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v

# End of lines configured by zsh-newuser-install

# Reverse i search
bindkey '^R' history-incremental-search-backward


# POWERLEVELS 10k
source ~/.dotfiles/zsh/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Autocomplete
source ~/.dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax Highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# COLORS ----------------
 if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi

# some more ls aliases
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
# END COLORS ---------

#NVIDIA
export PATH=${PATH}:/usr/local/cuda-12.2/bin:/usr/bin/
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda-12.2/lib64

#ROS HUMBLE
#source /opt/ros/humble/setup.zsh
#source ~/colcon_ws/install/setup.zsh
alias sr="source /opt/ros/humble/setup.zsh"
alias sw="source ~/colcon_ws/install/setup.zsh"
alias cw="cd ~/colcon_ws"
alias cs="cd ~/colcon_ws/src"
alias cb="cd ~/colcon_ws && colcon build"
alias rd="rosdep install --from-paths src --ignore-src -r -y"
alias s="ros2 launch mobile_mocap arducam_bringup.py"
alias lcam="v4l2-ctl --list-devices"
alias gc="globalprotect connect -portal vpn.northeastern.edu"
alias khouryssh=" ssh garylvov@login.khoury.northeastern.edu"
alias python="python3"
alias mysql="mysql -u root -p"

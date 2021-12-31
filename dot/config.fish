status --is-login; and status --is-interactive; and exec byobu-launcher

# Supresses fish's intro message
function fish_greeting
    cowsay I use Arch, btw ~~
end
# Sets the terminal type
set TERM "xterm-256color"
# $EDITOR use VSCode in terminal
set EDITOR "code"
# $VISUAL use VSCode in GUI mode
set VISUAL "code"

### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
    fish_vi_key_bindings
end

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "exa"
alias l='exa -al --color=always --group-directories-first'  # my preferred listing
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Changing "cat" to "bat"
alias cat='bat'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'        # human-readable sizes
alias free='free -m'    # show sizes in MB

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# youtube-dl
alias yt="mpv --ytdl-raw-options=yes-playlist= --ytdl-format=bestvideo+bestaudio/best "
alias yt-search="yt-dlp -F "
alias yt-best="yt-dlp -f bestvideo+bestaudio "
alias yt-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias yt-f="yt-dlp -f "

# git 
alias git-graph="git log --decorate --oneline --graph"

# Julia
alias jl="julia -t 24 -i --proj "

### SETTING THE STARSHIP PROMPT ###
starship init fish | source

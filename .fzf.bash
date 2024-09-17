# Setup fzf
# ---------
if [[ ! "$PATH" == */home/varro/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/varro/.fzf/bin"
fi
# THEME URL
# https://vitormv.github.io/fzf-themes#eyJib3JkZXJTdHlsZSI6InJvdW5kZWQiLCJib3JkZXJMYWJlbCI6IiIsImJvcmRlckxhYmVsUG9zaXRpb24iOjAsInByZXZpZXdCb3JkZXJTdHlsZSI6InJvdW5kZWQiLCJwYWRkaW5nIjoiMCIsIm1hcmdpbiI6IjAiLCJwcm9tcHQiOiI+ICIsIm1hcmtlciI6Ij4iLCJwb2ludGVyIjoi4peGIiwic2VwYXJhdG9yIjoi4pSAIiwic2Nyb2xsYmFyIjoi4pSCIiwibGF5b3V0IjoicmV2ZXJzZSIsImluZm8iOiJkZWZhdWx0IiwiY29sb3JzIjoiZmc6I2QwZDBkMCxmZys6I2QwZDBkMCxiZzojMTIxMjEyLGJnKzojMjYyNjI2LGhsOiNiMDVmNWYsaGwrOiNmZjVlNWUsaW5mbzojYWZhZjg3LG1hcmtlcjojYjYyNTI1LHByb21wdDojYjYyNTI1LHNwaW5uZXI6I2ZmYjE1ZSxwb2ludGVyOiNkMDFiMjQsaGVhZGVyOiNjYzljNjgsYm9yZGVyOiMyNjI2MjYsbGFiZWw6I2FlYWVhZSxxdWVyeTojZDlkOWQ5In0=

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#06070d,bg+:#0b0d17
  --color=hl:#b05f5f,hl+:#ff5e5e,info:#afaf87,marker:#b62525
  --color=prompt:#b62525,spinner:#ffb15e,pointer:#d01b24,header:#cc9c68
  --color=border:#262626,label:#aeaeae,query:#d9d9d9
  --print0
  --height 75%
  --bind "enter:become(nvim {})"
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"
  --layout="reverse"'

eval "$(fzf --bash)"

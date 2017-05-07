# .xiao
My bash configuration.

Installation:
```
git clone https://github.com/xliiauo/.xiao.git ~/.xiao

cat >>~/.bash_profile <<EOS
  if [[ -f ~/.xiao/bash-config ]]; then
    source ~/.xiao/bash-config
  fi
EOS

source ~/.bash_profile
```

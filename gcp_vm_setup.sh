set -eux

sudo apt install -y zsh
sudo chsh -s $(which zsh) $(whoami)


sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
     libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl


curl https://pyenv.run | bash


pyenv install 3.8
pyenv global 3.8

export PATH=${PATH}:"${HOME}/.pyenv/bin"
export PYENV_ROOT="$HOME/.pyenv"

command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


curl -sSL curl -sSL https://install.python-poetry.org | python -
export PATH="/home/stefan/.local/bin:$PATH"

mkdir ml-workspace && cd $_
pyenv local 3.8

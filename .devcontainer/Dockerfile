FROM mcr.microsoft.com/devcontainers/universal:3-noble
LABEL IMAGE_TYPE="devcontainer"

RUN apt-get update && apt-get install -y \
    bash-completion \
    ca-certificates \
    apt-utils \
    curl \
# Nvim Dependencies --
    fzf \
    xclip \ 
    build-essential \
    npm \
    luarocks \
# Nvim --
    && rm -rf /var/lib/apt/lists/*

# Nvim setup
RUN curl -fsSL -o nvim.tar.gz https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
RUN rm -rf /opt/nvim
RUN tar -C /opt -xzf nvim.tar.gz


FROM fedora:38
ENV SHELL=/bin/bash
RUN dnf install -y neovim gcc g++ ripgrep git nodejs
RUN git clone https://github.com/NvChad/NvChad ~/.config/nvim
RUN mkdir -p ~/.config/nvim/lua/custom
COPY ./*.lua /root/.config/nvim/lua/custom/
COPY ./lua_snippets /root/.config/nvim/lua/custom/lua_snippets
RUN nvim --headless +NvChadUpdate +qa
CMD nvim

FROM gitpod/workspace-full

# Install Homebrew (Linuxbrew)
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Set the Homebrew path
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"

# Install asdf
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
ENV PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:${PATH}"

# Install Ruby plugin for asdf
RUN asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

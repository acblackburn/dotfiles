# acblackburn's dotfiles

Dotfiles are how you personalise your system (particularly when it comes to CLI tools).

In an effort to keep my development experinece consistent between machines, I've decided to utilise [GNU Stow](https://www.gnu.org/software/stow/manual/stow.html) to turn my dotfiles into a git repo (Stow is great btw, and really easy to setup).

## what's in here

I'm still learning a lot of these tools and experimenting with new ones but here's my current setup:

- **Terminal emulator:** [Alacritty](https://github.com/alacritty/alacritty)
  - Uses [alacritty-theme](https://github.com/alacritty/alacritty-theme) as a Git submodule. When cloning this repo, use `git clone --recursive` or run `git submodule update --init --recursive` after cloning.
- **Terminal mulitplexer:** [Zellij](https://github.com/zellij-org/zellij)
- **CLI editor:** I started using [Helix](https://github.com/helix-editor/helix), but have recently been experimenting with [Neovim](https://github.com/neovim/neovim)
- **File explorer:** [Yazi](https://github.com/sxyazi/yazi) (although, I haven't been using that as much since installing `nvim-neo-tree`)

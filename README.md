# nvim-nvchad-conf
This repository contains my personal (And probably very bad) Neovim config using NvChad.
It currently only supports C/C++, Python, LaTeX, Zig and Golang.
This repository may be considered a fork of NvChad.

### Requirements
Full LaTeX support is only available through [TexLab](https://github.com/latex-lsp/texlab). `latexmk` is also required for LaTeX, while NodeJS 18.0 or newer is required for PyRight. You're also going to need compilers for all the langauges you use, such as C or Golang, otherwise some features may not work as intended.


## Insstallation
Make sure you install the external dependencies listed below under "Requirements" before installing
- In your Linux/macOS Commandline

```
> git clone https://github.com/Alessandro-Salerno/nvim-nvchad-conf ~/.config/nvim
> nvim
```
- In Neovim Commandline, after waiting for `Lazy` to initialize
```
<ESC>:MasonInstallAll
<ESC>:TSInstall c
<ESC>:TSInstall cpp
<ESC>:TSInstall python
<ESC>:TSInstall go
<ESC>:TSInstall zig
```
- If your're lucky, on a good day, this might even be it. On a bad day, or any other day for that matter, you'll have to dig on the internet for unknown errors just like me

### Credits
- https://www.youtube.com/watch?v=lsFoZIg-oDs
- https://github.com/LunarVim/LunarVim/issues/3723

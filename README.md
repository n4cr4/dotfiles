# Keymap
## vim

## tmux
- prefix: `k`
- switching pane
  - `prefix `+ `h, j, k, l`
- swap window
  - `Ctrl `+ `Shift `+ `Left, Right`
- split pane
  - `prefix` + `|, -`
- resize pane
  - `prefix` + `Ctrl` + `h, j, k, l`
- enter vi mode
  - `prefix` + `[`
- exit enter mode
  - `Enter`

## fzf
- trigger fzf comp
  - `**<TAB>`
- Paste the selected files and directories
  - `Ctrl` + `T`
- Paste the selected command from terminal history
  - `Ctrl` + `R`

# Installed CLI tools
- bat
- exa
- lazygit
- lazydocker
- dust
- fzf
- zoxide

# Tips
If you want to debug some lua vim configs, then use below.
```lua
print(vim.inspect(hogehuga))
```
and just `:messages` in x-mode.

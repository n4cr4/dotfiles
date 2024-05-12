# Keymap
## vim
| Key   | Description    |
|--------------- | --------------- |
| `` <leader>` ``   | switch buffer   |
| `<leader>w[-, \|]`   | split window |
| `<leader>cf`   | Format   |
| `s`| Flash (fast search and move) |
| `<leader>sk` | search key mapping |
| `<leader>sg` | live grep in directory |
| `<leader>sh` | live grep in vim help |

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
- Paste the selected files and directories
  - `Ctrl` + `T`
- Paste the selected command from history
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

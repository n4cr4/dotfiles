# Keymap

## vim

| Key                | Description                  |
| ------------------ | ---------------------------- |
| `` <leader>` ``    | switch buffer                |
| `<leader>w[-, \|]` | split window                 |
| `<leader>cf`       | Format                       |
| `s`                | Flash (fast search and move) |
| `<leader>sk`       | search key mapping           |
| `<leader>sg`       | live grep in directory       |
| `<leader>sh`       | live grep in vim help        |
| `<leader><space>`  | toggle window size           |
| `<leader>w`        | window manipultion           |
| `<leader>h`        | harpoon menu                 |
| `<leader>H`        | harpoon file                 |

## tmux

- prefix: `Ctrl-t`
- switching pane
  - `prefix ` + `h, j, k, l`
- move window to the right or left
  - `Ctrl`+ `Shift `+ `Left, Right`
- next/prev window
  - `prefix` + `n/p`
- split pane
  - `prefix` + `|, -`
- resize pane
  - `prefix` + `Ctrl` + `h, j, k, l`
- enter vi mode
  - `prefix` + `[`
- exit vi mode
  - `Enter`

## fzf

- trigger fzf comp
  - `**<TAB>`
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

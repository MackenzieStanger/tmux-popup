# tmux-popup
`tmux-popup` allows you to open up a popup terminal window session that you can close and reopen without losing anything that was run/is currently running. Convenient for scratch work in the terminal if you're in vim or if you want to run git commands without swapping to a different window.

This plugin works by creating a session named `_popup_{session_name}`, it changes the `prefix s` and `prefix w` keys to filter those sessions out of the tree but if you use a different keybinding or a plugin for selecting sessions you might need to filter these sessions out in your config.

## Default Keybindings
`prefix M-a`: open the popup window
`M-a` (when in the popup): close the popup window

## Customization Options
`set -g @popup-key`: set this to change the key used for opening and closing the popup window (defaults to `M-a`)

`set -g @popup-table`: set this to change the default keybind table to set the popup open binding in (defaults to the `prefix` table)

`set -g @popup-border`: set this to change the border setting of the popup window (defaults to `rounded`)

`set -g @popup-height`: set this to change the height setting of the popup window (defaults to `70%`)

`set -g @popup-width`: set this to change the width setting of the popup window (defaults to `70%`)

## Installation
### With Tmux Plugin Manager
Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'MackenzieStanger/tmux-popup'

Resource your config with `Prefix + I` to install and source the plugin.

### Manual Install
Clone the repo:

    $ git clone https://github.com/MackenzieStanger/tmux-plugin ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/sidebar.tmux

Reload TMUX environment:

    $ tmux source-file ~/.tmux.conf

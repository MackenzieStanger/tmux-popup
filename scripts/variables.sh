POPUP_DEFAULT_KEY='M-a'
POPUP_KEY_OPTION='@popup-key'
# setting to "root" is equivalent to "-n" option of bind-key
POPUP_DEFAULT_TABLE='prefix'
POPUP_TABLE_OPTION='@popup-table'

POPUP_DEFAULT_BORDER='rounded'
POPUP_BORDER_OPTION='@popup-border'

POPUP_DEFAULT_HEIGHT="70%"
POPUP_HEIGHT_OPTION="@popup-height"

POPUP_DEFAULT_WIDTH="70%"
POPUP_WIDTH_OPTION="@popup-width"

get_tmux_option() {
	local option=$1
	local default_value=$2
	local option_value=$(tmux show-option -gqv "$option")
	if [ -z "$option_value" ]; then
		echo "$default_value"
	else
		echo "$option_value"
	fi
}

set_tmux_option() {
	local option=$1
	local value=$2
	tmux set-option -gq "$option" "$value"
}

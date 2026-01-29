# smart-arrow.yazi

[Yazi](https://github.com/sxyazi/yazi) plugin that functions as a drop-in replacement for the internal [arrow](https://yazi-rs.github.io/docs/configuration/keymap/#mgr.arrow) subcommand to wrap to top/bottom of directories

<TBD: screenshot>

## Requirements

- [Yazi](https://github.com/sxyazi/yazi) v26.1.22+

## Installation

```bash
ya pkg add jessefarinacci/smart-arrow
```

## Setup

Add this to your `init.lua`:

```lua
require("smart-arrow"):setup()
```

Add this to your `keymap.toml`

```toml
[[mgr.prepend_keymap]]
on = "<down>"
run = "plugin smart-arrow '+1'"
desc = "Move cursor to the next entry, or wrap to top of directory"
[[mgr.prepend_keymap]]
on = "<up>"
run = "plugin smart-arrow '-1'"
desc = "Move cursor to the previous entry, or wrap to bottom of directory"
[[mgr.prepend_keymap]]
on = "j"
run = "plugin smart-arrow '+1'"
desc = "Move cursor to the next entry, or wrap to top of directory"
[[mgr.prepend_keymap]]
on = "k"
run = "plugin smart-arrow '-1'"
desc = "Move cursor to the previous entry, or wrap to bottom of directory"
```

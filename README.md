# smart-arrow.yazi

[Yazi](https://github.com/sxyazi/yazi) plugin that functions as a drop-in replacement for the internal [arrow](https://yazi-rs.github.io/docs/configuration/keymap/#mgr.arrow) subcommand to wrap to top/bottom of directories

_Based on a now defunct official [Yazi extension recommendation](https://yazi-rs.github.io/docs/tips/#navigation-wraparoun)._

## Screenshot

![Screenshot](/demo.gif)

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

Add this to your `keymap.toml`:

```toml
[[mgr.prepend_keymap]]
desc = "Move cursor to the next entry, or wrap to top of directory"
on = "<down>"
run = "plugin smart-arrow '+1'"
[[mgr.prepend_keymap]]
desc = "Move cursor to the previous entry, or wrap to bottom of directory"
on = "<up>"
run = "plugin smart-arrow '-1'"
[[mgr.prepend_keymap]]
desc = "Move cursor to the next entry, or wrap to top of directory"
on = "j"
run = "plugin smart-arrow '+1'"
[[mgr.prepend_keymap]]
desc = "Move cursor to the previous entry, or wrap to bottom of directory"
on = "k"
run = "plugin smart-arrow '-1'"
```

```
   __   ___ ______  __  _  ___   ________  ___ _________  _  _______________
  / /  / _ /_  /\ \/ / / |/ / | / /  _/  |/  // ___/ __ \/ |/ / __/  _/ ___/
 / /__/ __ |/ /_ \  / /    /| |/ // // /|_/ // /__/ /_/ /    / _/_/ // (_ /
/____/_/ |_/___/ /_(_)_/|_/ |___/___/_/  /_/ \___/\____/_/|_/_/ /___/\___/
```

## Dependencies:

1. [ripgrep](https://github.com/BurntSushi/ripgrep)
2. [fd](https://github.com/sharkdp/fd)
3. [Treesitter](https://tree-sitter.github.io/tree-sitter/)

## Directory structure:

```
nvim/
├── init.lua                        # Entry point & bootstrap
├── lua/
│   ├── config/
│   │   ├── init.lua                # Requires all config files
│   │   ├── options.lua             # vim.opt settings
│   │   └── keymaps.lua             # Custom keymappings
│   └── plugins/
│       ├── init.lua                # Plugin manager setup + requires
│       ├── gruvbox.lua          
│       ├── gitsigns.lua       
│       ├── indent-blankline.lua
│       └── ... other plugins
├── .gitignore
└── lazy-lock.json
```

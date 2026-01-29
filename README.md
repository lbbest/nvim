```
   __   ___ ______  __  _  ___   ________  ___ _________  _  _______________
  / /  / _ /_  /\ \/ / / |/ / | / /  _/  |/  // ___/ __ \/ |/ / __/  _/ ___/
 / /__/ __ |/ /_ \  / /    /| |/ // // /|_/ // /__/ /_/ /    / _/_/ // (_ /
/____/_/ |_/___/ /_(_)_/|_/ |___/___/_/  /_/ \___/\____/_/|_/_/ /___/\___/
```

## Directory structure:

```
nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   ├── init.lua            # Requires all config files
│   │   └── options.lua         # vim.opt settings
│   └── plugins/
│       ├── init.lua            # Plugin manager setup + requires
│       ├── colorscheme.lua     # Theme config
│       ├── gitsigns.lua        # Git integration
│       └── indent.lua          # Indent guides
├── .gitignore
└── lazy-lock.json
```

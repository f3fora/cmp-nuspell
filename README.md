# cmp-nuspell

`nuspell` source for [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp) based on [`nuspell`](https://nuspell.github.io/).

## Status

WIP. Feedback wanted also for [lua-nuspell](https://github.com/f3fora/lua-nuspell)

## Setup

```lua
require('cmp').setup {
  sources = {
    { name = 'nuspell' }
  }
}
```

## Installing cmp-nuspell and [lua-nuspell](https://github.com/f3fora/lua-nuspell) 

```lua
use {
    'f3fora/cmp-nuspell',
    rocks={'lua-nuspell'}
}





# cmp-nuspell

`nuspell` source for [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp) based on [`nuspell`](https://nuspell.github.io/).

## Status

WIP. Feedback wanted for [lua-nuspell](https://github.com/f3fora/lua-nuspell)

Support only `en_US` dictionary.

First test for integrating `nuspell` and hunspell dictionary into neovim.

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
```

## Checking existance of hunspell dictionary

The output of `nuspell -D` should look like:

```
Search paths:
/home/user/.local/share/hunspell
/usr/local/share/hunspell
/usr/share/hunspell
/usr/local/share/myspell
/usr/share/myspell
.
Available dictionaries:
en_AG           /usr/share/hunspell/en_AG
en_BS           /usr/share/hunspell/en_BS
en_BW           /usr/share/hunspell/en_BW
en_BZ           /usr/share/hunspell/en_BZ
en_DK           /usr/share/hunspell/en_DK
en_GB           /usr/share/hunspell/en_GB
en_GB-large     /usr/share/hunspell/en_GB-large
en_GH           /usr/share/hunspell/en_GH
en_HK           /usr/share/hunspell/en_HK
en_IE           /usr/share/hunspell/en_IE
en_IN           /usr/share/hunspell/en_IN
en_JM           /usr/share/hunspell/en_JM
en_NA           /usr/share/hunspell/en_NA
en_NG           /usr/share/hunspell/en_NG
en_NZ           /usr/share/hunspell/en_NZ
en_SG           /usr/share/hunspell/en_SG
en_TT           /usr/share/hunspell/en_TT
en_US           /usr/share/hunspell/en_US
en_US-large     /usr/share/hunspell/en_US-large
en_ZA           /usr/share/hunspell/en_ZA
en_ZW           /usr/share/hunspell/en_ZW
it_CH           /usr/share/hunspell/it_CH
it_IT           /usr/share/hunspell/it_IT
```




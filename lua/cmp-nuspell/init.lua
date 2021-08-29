local nuspell = require('nuspell')
local source = {}

local lang = 'en_US'
local dirs = nuspell.search_default_dirs_for_dicts()
local path = nuspell.find_dictionary(dirs, lang)

function source.new()
    local self = setmetatable({}, { __index = source })
    self.available = false
    if path then
        self.dict = nuspell.Dictionary.load_from_path(path)
        self.available = true
    end
    return self
end

function source:is_available()
    return self.available
end

function source:get_keyword_pattern()
    return [[\w\+]]
end

local function candidates(suggestions, word)
    local items = {}
    local i = 0
    if word then
        items[1] = word
        i = 1
    end
    for k, v in ipairs(suggestions) do
        items[k + i] = { label = v }
    end
    return items
end

function source:complete(request, callback)
    local input = string.sub(request.context.cursor_before_line, request.offset)
    local word
    if self.dict:spell(input) then
        word = input
    end
    callback({ items = candidates(self.dict:suggest(input, word)), isIncomplete = true })
end

return source

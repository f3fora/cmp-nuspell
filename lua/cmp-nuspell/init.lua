local nuspell = require('nuspell')
local source = {}

function source.new()
    local self = setmetatable({}, { __index = source })

    local lang = 'en_US'
    local dirs = nuspell.search_default_dirs_for_dicts()
    self.dict = nuspell.Dictionary.load_from_path(nuspell.find_dictionary(dirs, lang))

    return self
end

function source:is_available()
    return vim.wo.spell
end

function source:get_keyword_pattern()
    return [[\w\+]]
end

local function candidates(entries)
    local items = {}
    for k, v in ipairs(entries) do
        items[k] = { label = v }
    end
    return items
end

function source:complete(request, callback)
    local input = string.sub(request.context.cursor_before_line, request.offset)
    callback({ items = candidates(self.dict:suggest(input)), isIncomplete = true })
end

return source

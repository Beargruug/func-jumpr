-- test setup
local M = {}
package.loaded["nvim-treesitter.parsers"] = {
    get_parser = function()
        return {
            parse = function()
                return {}
            end,
        }
    end,
}

-- Help?
-- local win = vim.api.nvim_get_current_win()
-- assert.is_not_nil(win, "Window should be opened")
-- assert.are.same(
--     { name = "No functions found!" },
--     functions,
--     "Buffer should contain 'No functions found!'"
-- )

describe("UI Component", function()
    local ui = require("blink.ui")
    local p = require("blink.parser")

    before_each(function()
        p.get_functions = function()
            return { name = "No functions found!" }
        end
    end)

    it("should do something", function()
        -- ...
    end)
end)

return M

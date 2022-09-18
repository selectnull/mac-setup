M = {}

local use = packer.use
use {'NLKNguyen/papercolor-theme', opt=true}
use {'kyoz/purify', rtp='vim', opt=true}
use {'ldelossa/vimdark', opt=true}
use {'Aryansh-S/fastdark.vim', opt=true}
use {'ackyshake/Spacegray.vim', opt=true}

--- Try a color scheme and return true if it exist.
function M.try_color_scheme(colorscheme)
    local ok, _ = pcall(vim.cmd, 'colorscheme '..colorscheme)
    if not ok then
        vim.notify('colorscheme '..colorscheme..' not found.')
    end
    return ok
end

--- Try each color scheme in a list and use the first one found.
function M.try_color_schemes(color_schemes)
    for _, cs in ipairs(color_schemes) do
        if M.try_color_scheme(cs) then
            break
        end
    end
end

return M

if vim.g.resizefont_step == nil then
    vim.g.resizefont_step = 0.3
end

local function ResizeFont(adj)
    if vim.opt.guifont == nil then
        error("guifont option does not exist")
    end

    local filename, oldsize = string.match(vim.opt.guifont._value, '^([^:]+:[hw])([%d]+%.?[%d]*)$')

    if filename == nil then
        error("Cannot parse vim.opt.guifont; doesn't match pattern")
    end

    vim.opt.guifont = filename..(tonumber(oldsize) + adj)
    print(vim.opt.guifont)

    vim.cmd [[ redraw ]]
end

local function Bigger()
    ResizeFont(vim.g.resizefont_step)
end

local function Smaller()
    ResizeFont(-vim.g.resizefont_step)
end

vim.api.nvim_create_user_command('ResizeFontBigger', Bigger, {})
vim.api.nvim_create_user_command('ResizeFontSmaller', Smaller, {})

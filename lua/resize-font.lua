local params = {}

local function Setup(parameters)
    params = parameters
end

local function ResizeFont(step)
    if vim.opt.guifont == nil then
        error("guifont option does not exist")
    end

    local filename, oldsize = string.match(vim.opt.guifont._value, '^([^:]+:[hw])([%d]+%.?[%d]*)$')

    if filename == nil then
        error("Cannot parse vim.opt.guifont; doesn't match pattern")
    end

    local newsize = tonumber(oldsize) + step
    vim.opt.guifont = filename..newsize

    print("New size: "..newsize)
end

local function GetResizeStep()
    if vim.g.resizefont_step ~= nil then
        vim.notify("Setting resize step via legacy vimscript option `g:resizefont_step` is "..
                   "deprecated", vim.log.levels.WARN)
    end

    if params.resize_step == nil then
        if vim.g.resizefont_resize_step ~= nil then
            params.resize_step = vim.g.resizefont_step
        else
            params.resize_step = 0.3
        end
    end

    return params.resize_step
end

local function Bigger()
    ResizeFont(GetResizeStep())
end

local function Smaller()
    ResizeFont(-GetResizeStep())
end

vim.api.nvim_create_user_command('ResizeFontBigger', Bigger, {})
vim.api.nvim_create_user_command('ResizeFontSmaller', Smaller, {})

return {
    setup = Setup,
    resize_font = ResizeFont,
    bigger = Bigger,
    smaller = Smaller,
}

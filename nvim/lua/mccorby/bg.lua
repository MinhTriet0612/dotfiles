-------------Input -----------
local isClearBgFirstTime = true
local groups = {
  "Normal",
  "NonText",
  "NormalFloat",
}
------------------------------

-- cache original highlight values once
local function get_bg(group)
  local hl = vim.api.nvim_get_hl(0, { name = group })
  return hl.bg
end

vim.g._bg_cache = nil
local function cache_bg()
  if vim.g._bg_cache then return end

  local cache = {}
  for _, group in ipairs(groups) do
    cache[group] = get_bg(group)
  end
  vim.g._bg_cache = cache
end

local function restore_bg()
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = vim.g._bg_cache[group] })
  end
  vim.g.bg_transparent = false
end

local function clear_bg()
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end
  vim.g.bg_transparent = true
end

cache_bg()
if (isClearBgFirstTime) then
  clear_bg()
end


-- toggle transparent background
vim.keymap.set("n", "<leader>tb", function()
  if vim.g.bg_transparent then
    -- restore original background
    restore_bg()
  else
    -- set background to none
    clear_bg()
  end
end)

-- output: the firstime in transparent
-- need to cache in the first time, -> find api or

return {
-- 	{
--   "folke/snacks.nvim",
--   priority = 1000,
--   lazy = false,
--   ---@type snacks.Config
--   opts = {
--     -- your configuration comes here
--     -- or leave it empty to use the default settings
--     -- refer to the configuration section below
-- 		dashboard = {
--   sections = {
--     { section = "header" },
--     -- {
--     --   pane = 2,
--     --   section = "terminal",
--     --   cmd = "colorscript -e square",
--     --   height = 5,
--     --   padding = 1,
--     -- },
--     { section = "keys", gap = 1, padding = 1 },
--     {
--       pane = 2,
--       icon = " ",
--       desc = "Browse Repo",
--       padding = 1,
--       key = "b",
--       action = function()
--         Snacks.gitbrowse()
--       end,
--     },
--     function()
--       local in_git = Snacks.git.get_root() ~= nil
--       local cmds = {
--         {
--           title = "Notifications",
--           cmd = "gh notify -s -a -n5",
--           action = function()
--             vim.ui.open("https://github.com/notifications")
--           end,
--           key = "n",
--           icon = " ",
--           height = 5,
--           enabled = true,
--         },
--         {
--           title = "Open Issues",
--           cmd = "gh issue list -L 3",
--           key = "i",
--           action = function()
--             vim.fn.jobstart("gh issue list --web", { detach = true })
--           end,
--           icon = " ",
--           height = 7,
--         },
--         {
--           icon = " ",
--           title = "Open PRs",
--           cmd = "gh pr list -L 3",
--           key = "p",
--           action = function()
--             vim.fn.jobstart("gh pr list --web", { detach = true })
--           end,
--           height = 7,
--         },
--         {
--           icon = " ",
--           title = "Git Status",
--           cmd = "git --no-pager diff --stat -B -M -C",
--           height = 10,
--         },
--       }
--       return vim.tbl_map(function(cmd)
--         return vim.tbl_extend("force", {
--           pane = 2,
--           section = "terminal",
--           enabled = in_git,
--           padding = 1,
--           ttl = 5 * 60,
--           indent = 3,
--         }, cmd)
--       end, cmds)
--     end,
--     { section = "startup" },
-- }
--
-- 			},
-- 		},
-- 	}
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
		theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' NeoWarrior',
          group = 'DiagnosticHint',
          action = 'NeoWarriorOpen current',
          key = 'n',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
    }
  end,
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

}

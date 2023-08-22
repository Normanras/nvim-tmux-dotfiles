 return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
	  ["core.integrations.nvim-cmp"] = {},
	  ["core.highlights"] = {},
	  ["core.mode"] = {},
	  ["core.keybinds"] = {
	    config = {
	      hook =  function(keybinds)
		keybinds.remap_key("norg", "n", "<M-CR>", "<S-tab>")
	      end,
	    }
	  },
	  ["core.completion"] = {
	    config = {
	      engine = "nvim-cmp"
	    },
	  },
          ["core.dirman"] = {
            config = {
              workspaces = {
                customer_notes = "~/Documents/Work/Customer_Notes/",
              },
            },
          },
        },
      }
    end,
  }

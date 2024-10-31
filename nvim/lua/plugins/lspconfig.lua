return {
	"neovim/nvim-lspconfig",
	opts = {
        -- Python config. Exploit has a lot of wildcard imports.
        -- So disable related rules.
		servers = {
			ruff = {
				init_options = {
					settings = {
						lint = {
							ignore = { "F403", "F405" },
						},
					},
				},
			},
			pyright = {
                settings = {
                    python = {
                        analysis = {
                            diagnosticSeverityOverrides = {
                                reportWildcardImportFromLibrary = false
                            }
                        }
                    }
                }
			},
		},
	},
}

return {
	"neovim/nvim-lspconfig",
	opts = {
        -- Python config. Exploit has a lot of wildcard imports.
        -- So disable related rules.
		servers = {
			ruff = {
				init_options = {
					settings = {
                        lineLength = 100,
						lint = {
                            enable = false,
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

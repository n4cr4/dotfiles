return {
	"conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "ruff" },
			markdown = { "mdformat" },
			cpp = { "clang_format" },
		},
		formatters = {
			clang_format = {
				prepend_args = { "-style={BasedOnStyle: LLVM, IndentWidth: 4}" },
			},
		},
	},
}

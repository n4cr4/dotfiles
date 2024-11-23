return {
	"conform.nvim",
	opts = {
		formatters_by_ft = {
			cpp = { "clang_format" },
		},
		formatters = {
			clang_format = {
				prepend_args = { "-style={BasedOnStyle: LLVM, IndentWidth: 4}" },
			},
			prettier = {
				prepend_args = { "--tab-width", "4" },
			},
		},
	},
}

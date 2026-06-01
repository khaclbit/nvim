return {
  {
    "Nsidorenco/neotest-vstest",
    lazy = true,
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      opts.adapters["neotest-vstest"] = {}
    end,
  },
}

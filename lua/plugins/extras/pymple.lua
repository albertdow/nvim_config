return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    local api = require("pymple.api")
    local config = require("pymple.config")

    local function on_move(args)
      api.update_imports(args.source, args.destination, config.user_config.update_imports)
    end

    local events = require("neo-tree.events")
    opts.event_handlers = opts.event_handlers or {}
    vim.list_extend(opts.event_handlers, {
      { event = events.FILE_MOVED, handler = on_move },
      { event = events.FILE_RENAMED, handler = on_move },
    })
  end,
}

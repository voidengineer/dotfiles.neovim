vim.g.nvc = {
  editor = {
    smear_cursor = {
      enabled = true,
    },
    harper_ls = {
      enabled = true,
    },
  },
  lang = {
    ansible = {
      enabled = true,
    },
    bash = {
      enabled = true,
    },
    docker = {
      enabled = true,
    },
    json = {
      enabled = true,
    },
    lua = {
      enabled = true,
    },
    markdown = {
      enabled = true,
    },
    rust = {
      enabled = true,
    },
    sql = {
      enabled = true,
    },
    typescript = {
      enabled = true,
    },
    web = {
      enabled = true,
    },
    yaml = {
      enabled = true,
    },
  },
  db = {
    dadbod = {
      enabled = true,
    },
  },
}

local config = io.open(os.getenv("HOME") .. "/.nvc.json", "r")
if config then
  local data = config:read("*a")
  config:close()

  local ok, json = pcall(vim.json.decode, data, { luanil = { object = true, array = true } })
  if ok then
    vim.g.nvc = vim.tbl_deep_extend("force", vim.g.nvc, json or {})
  end
end

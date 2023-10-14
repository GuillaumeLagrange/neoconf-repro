local settings = require("neoconf.settings")

local cache = settings._cache

for k, v in pairs(cache) do
	print(k)
	print(vim.inspect(v._settings["rust-analyzer"].check))
end

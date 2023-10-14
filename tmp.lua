local Util = require("neoconf.util")
local Config = require("neoconf.config")
local Settings = require("neoconf.settings")

local cache = Settings._cache

for k, v in pairs(cache) do
	print(k)
	if v._settings["rust-analyzer"] then
		print(vim.inspect(v._settings["rust-analyzer"].check))
	end
end

Util.info(vim.inspect(Settings.get_local("~/rust/neoconf-repro/service_a/"):get("vscode")["rust-analyzer"].check))

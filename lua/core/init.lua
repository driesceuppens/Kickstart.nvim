return function setup(opts)
    local core_conf_files = {
	    "mappings",
	    "settings",
	    "globals",
	    "kitty-navigator",
    }

    for _, name in ipairs(core_conf_files) do
	    name = "core." .. name
	    require(name)
    end
end

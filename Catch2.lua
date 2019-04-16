-- scaffold geniefile for Catch2

Catch2_script = path.getabsolute(path.getdirectory(_SCRIPT))
Catch2_root = path.join(Catch2_script, "Catch2")

Catch2_includedirs = {
	path.join(Catch2_script, "config"),
	Catch2_root,
}

Catch2_libdirs = {}
Catch2_links = {}
Catch2_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { Catch2_includedirs }
	end,

	_add_defines = function()
		defines { Catch2_defines }
	end,

	_add_libdirs = function()
		libdirs { Catch2_libdirs }
	end,

	_add_external_links = function()
		links { Catch2_links }
	end,

	_add_self_links = function()
		links { "Catch2" }
	end,

	_create_projects = function()

project "Catch2"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		Catch2_includedirs,
	}

	defines {}

	files {
		path.join(Catch2_script, "config", "**.h"),
		path.join(Catch2_root, "**.h"),
		path.join(Catch2_root, "**.cpp"),
	}

end, -- _create_projects()
}

---

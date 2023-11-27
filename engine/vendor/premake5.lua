directory = {}
directory["spdlog"] = "%{wks.location}/engine/vendor/spdlog"

project "spdlog"
    kind 'StaticLib'
    language 'C++'
    cppdialect 'C++17'
    staticruntime 'off'
	location "%{directory.spdlog}"

    files {
        '%{directory.spdlog}/include/**.h',
        '%{directory.spdlog}/src/**.cpp',
    }

    includedirs {
        '%{directory.spdlog}/include',
    }

    defines {
        'SPDLOG_COMPILED_LIB'
    }

    filter 'system:windows'
        systemversion 'latest'

    filter 'configurations:Debug'
        runtime 'Debug'
        symbols 'on'

    filter 'configurations:Release'
        runtime 'Release'
        optimize 'on'

    filter 'configurations:Dist'
        runtime 'Release'
        optimize 'on'
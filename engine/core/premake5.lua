project 'Neon'
    kind 'StaticLib'
    language 'C++'
    cppdialect 'C++17'
	staticruntime 'off'

    files {
        'include/**.h',
        'source/**.cpp',
    }
    
    includedirs {
        'include',
        '%{dependency.glfw}',
        '%{dependency.spdlog}'
    }

    links {
        'GLFW'
    }

    defines {
		'_CRT_SECURE_NO_WARNINGS',
		'GLFW_INCLUDE_NONE'
	}

	filter 'platforms:Win64'
		defines 'NE_PLATFORM_WINDOWS'

    filter 'system:windows'
        systemversion 'latest'

    filter 'configurations:Debug'
        defines 'NE_DEBUG'
        runtime 'Debug'
        symbols 'on'

    filter 'configurations:Release'
        defines 'NE_RELEASE'
        runtime 'Release'
        optimize 'on'

    filter 'configurations:Dist'
        defines 'NE_DIST'
        runtime 'Release'
        optimize 'on'

project 'ne-tools-editor'
    kind 'ConsoleApp'
    language 'C++'
    cppdialect 'C++17'
	staticruntime "off"

    files {
        'include/**.h',
        'source/**.cpp',
    }
    
    includedirs {
        'include',
        '%{dependency.spdlog}',
        '%{dependency.neon.application}',
        '%{dependency.neon.common}',
        '%{dependency.neon.platform}',
    }

    links {
        'ne-application',
    }

	filter 'platforms:Win64'
		defines 'NE_PLATFORM_WINDOWS'

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        defines "NE_DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "NE_RELEASE"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        defines "NE_DIST"
        runtime "Release"
        optimize "on"

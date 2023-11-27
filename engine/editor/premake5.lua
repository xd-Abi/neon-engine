project 'Editor'
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
        '%{wks.location}/engine/core/include',
        '%{dependency.spdlog}'
    }

    links {
        "Neon"
    }

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
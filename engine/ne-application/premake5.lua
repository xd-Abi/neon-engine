project "ne-application"
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
        '%{dependency.neon.common}',
        '%{dependency.neon.platform}',
    }

    links {
        'ne-common',
        'ne-platform',
    }

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
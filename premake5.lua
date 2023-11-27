workspace "neon"
    architecture "x86_64"
    objdir "%{wks.location}/.bin/%{prj.name}/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
    targetdir "%{wks.location}/.bin/%{prj.name}/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
    startproject "Editor"

    configurations {
        "Debug",
        "Release",
        "Dist"
    }

    flags {
        "MultiProcessorCompile"
    }


dependency = {}
dependency["spdlog"] = "%{wks.location}/engine/vendor/spdlog/include"

group "Core"
    include "engine/core"
group ""

group "Tools"
    include "engine/editor"
group ""
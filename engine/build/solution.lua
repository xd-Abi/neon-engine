workspace "NE"
    architecture "x86_64"
    location '../../'
    objdir "%{wks.location}/engine/binaries/%{prj.name}/%{cfg.platform}-%{cfg.buildcfg}"
    targetdir "%{wks.location}/engine/binaries/%{prj.name}/%{cfg.platform}-%{cfg.buildcfg}"
    
    configurations {
        "Debug",
        "Release",
        "Dist"
    }

    flags {
        "MultiProcessorCompile"
    }
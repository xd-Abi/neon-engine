workspace 'neon'
    architecture 'x86_64'
    objdir '%{wks.location}/.bin/%{prj.name}/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}'
    targetdir '%{wks.location}/.bin/%{prj.name}/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}'
    startproject 'ne-tools-editor'

    configurations {
        'Debug',
        'Release',
        'Dist'
    }

    flags {
        'MultiProcessorCompile'
    }


dependency = {}
dependency['neon'] = {}
dependency['neon']['application'] = '%{wks.location}/engine/ne-application/include'
dependency['neon']['common'] = '%{wks.location}/engine/ne-common/include'
dependency['neon']['platform'] = '%{wks.location}/engine/ne-platform/include'

group 'neon'
    include 'engine/ne-application'
    include 'engine/ne-common'
    include 'engine/ne-platform'
    include 'engine/ne-tools-editor'
group ''

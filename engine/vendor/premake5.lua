directory = {}
directory["GLFW"] = "%{wks.location}/engine/vendor/glfw"

project 'GLFW'
	kind 'StaticLib'
	language 'C'
    location '%{directory.GLFW}'

	files {
		'%{directory.GLFW}/include/GLFW/glfw3.h',
		'%{directory.GLFW}/include/GLFW/glfw3native.h',
		'%{directory.GLFW}/src/glfw_config.h',
		'%{directory.GLFW}/src/context.c',
		'%{directory.GLFW}/src/init.c',
		'%{directory.GLFW}/src/input.c',
		'%{directory.GLFW}/src/monitor.c',
		'%{directory.GLFW}/src/vulkan.c',
		'%{directory.GLFW}/src/window.c'
	}
	filter 'system:linux'
		pic 'On'

		systemversion 'latest'
		staticruntime 'On'

		files {
			'%{directory.GLFW}/src/x11_init.c',
			'%{directory.GLFW}/src/x11_monitor.c',
			'%{directory.GLFW}/src/x11_window.c',
			'%{directory.GLFW}/src/xkb_unicode.c',
			'%{directory.GLFW}/src/posix_time.c',
			'%{directory.GLFW}/src/posix_thread.c',
			'%{directory.GLFW}/src/glx_context.c',
			'%{directory.GLFW}/src/egl_context.c',
			'%{directory.GLFW}/src/osmesa_context.c',
			'%{directory.GLFW}/src/linux_joystick.c'
		}

		defines {
			'_GLFW_X11'
		}

	filter 'system:windows'
		systemversion 'latest'
		staticruntime 'On'

		files {
			'%{directory.GLFW}/src/win32_init.c',
			'%{directory.GLFW}/src/win32_joystick.c',
			'%{directory.GLFW}/src/win32_monitor.c',
			'%{directory.GLFW}/src/win32_time.c',
			'%{directory.GLFW}/src/win32_thread.c',
			'%{directory.GLFW}/src/win32_window.c',
			'%{directory.GLFW}/src/wgl_context.c',
			'%{directory.GLFW}/src/egl_context.c',
			'%{directory.GLFW}/src/osmesa_context.c'
		}

		defines { 
			'_GLFW_WIN32',
			'_CRT_SECURE_NO_WARNINGS'
		}

	filter 'configurations:Debug'
		runtime 'Debug'
		symbols 'on'

	filter 'configurations:Release'
		runtime 'Release'
		optimize 'on'
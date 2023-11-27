#pragma once

#include <neon/common/log.h>
#include <neon/common/platform.h>

#ifdef NE_DEBUG

	#if defined(NE_PLATFORM_WINDOWS)
		#define NE_DEBUGBREAK() __debugbreak()
	#endif

	#define NE_ASSERT(check, ...) { if (!(check)) { NE_ERROR("Assertion failed: {0}", __VA_ARGS__); NE_DEBUGBREAK(); } }

#else 
	#define NE_DEBUGBREAK()
	#define NE_ASSERT(...)
#endif

#pragma once

#include <neon/common/base.h>

/* This ignores all warnings raised inside External headers */
#pragma warning(push, 0)
#include <spdlog/spdlog.h>
#include <spdlog/fmt/ostr.h>
#pragma warning(pop)

namespace Neon {

	class Log
	{
	public:
		static void Init();

		static Ref<spdlog::logger>& GetCoreLogger() {
			return s_CoreLogger;
		}

	private:
		static Ref<spdlog::logger> s_CoreLogger;
	};
}

/* Macros for the core logger */
#define NE_TRACE(...)			::Neon::Log::GetCoreLogger()->trace(__VA_ARGS__)
#define NE_INFO(...)			::Neon::Log::GetCoreLogger()->info(__VA_ARGS__)
#define NE_WARN(...)			::Neon::Log::GetCoreLogger()->warn(__VA_ARGS__)
#define NE_ERROR(...)			::Neon::Log::GetCoreLogger()->error(__VA_ARGS__)
#define NE_CRITICAL(...)		::Neon::Log::GetCoreLogger()->critical(__VA_ARGS__)

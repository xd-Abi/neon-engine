#pragma once

#include <neon/core/base.h>

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

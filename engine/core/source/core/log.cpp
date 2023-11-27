#include <neon/core/log.h>

#include <spdlog/sinks/stdout_color_sinks.h>
#include <spdlog/sinks/basic_file_sink.h>

namespace Neon {

	Ref<spdlog::logger> Log::s_CoreLogger;

	void Log::Init() 
	{
		s_CoreLogger = MakeRef<spdlog::logger>("NE", MakeRef<spdlog::sinks::stdout_color_sink_mt>());
		spdlog::register_logger(s_CoreLogger);
		s_CoreLogger->set_level(spdlog::level::trace);
		s_CoreLogger->flush_on(spdlog::level::trace);
	}
}

#pragma once

#include <neon/core/base.h>
#include <neon/core/debug.h>

namespace Neon {

	struct CommandLineArgs
	{
		int Count = 0;
		char** Args = nullptr;

		const char* operator[](int index) const
		{
			NE_ASSERT(index < Count, "Index exceeds the maximum count.")
		}
	};

	struct AppSpecficiation
	{
		String Name = "Neon Application";
		CommandLineArgs CommandLineArgs;
	};

	class App
	{
	public:
		App(const AppSpecficiation& specification);
		virtual ~App();

		void Run();
		void Close();

	private:
		static App* s_Instance;

		AppSpecficiation m_Specification;
		bool m_Running = true;
	};
}

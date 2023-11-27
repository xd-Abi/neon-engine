#pragma once

#include <neon/common.h>

namespace Neon {

	struct ApplicationSpecification
	{
		String Name;
	};

	class Application
	{
	public:
		Application(const ApplicationSpecification& specification);
		~Application();

		void Run();
		void Close();

	private:
		ApplicationSpecification m_Specification;
		bool m_Running = true;
	};
}

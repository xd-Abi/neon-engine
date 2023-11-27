#include <neon/core/app.h>

namespace Neon {

	App* App::s_Instance = nullptr;

	App::App(const AppSpecficiation& specification)
		: m_Specification(specification)
	{
		NE_ASSERT(!s_Instance, "Application already exists!");
		s_Instance = this;
	}

	App::~App() 
	{}

	void App::Run()
	{
		while (m_Running)
		{
		}
	}

	void App::Close()
	{
		m_Running = false;
	}
}

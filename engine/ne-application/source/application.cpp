#include <neon/application/application.h>

#include <stdio.h>

namespace Neon {

	Application::Application(const ApplicationSpecification& specficiation)
		: m_Specification(specficiation)
	{}

	Application::~Application()
	{}

	void Application::Run()
	{
		printf(m_Specification.Name.c_str());

		while (m_Running)
		{
		}
	}

	void Application::Close()
	{
		m_Running = false;
	}
}

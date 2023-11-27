#pragma once

#include <neon/application.h>
#include <neon/common.h>

namespace Neon {

	/* To be defined in client */
	Application* CreateApp();
}

int main(int argc, char** argv)
{
	Neon::Log::Init();

	auto app = Neon::CreateApp();
	app->Run();
	delete app;
}

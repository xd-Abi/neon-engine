#pragma once

#include <neon/application.h>

namespace Neon {

	/* To be defined in client */
	Application* CreateApp();
}

int main(int argc, char** argv)
{
	auto app = Neon::CreateApp();
	app->Run();
	delete app;
}

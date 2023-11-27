#pragma once

#include <neon/neon.h>

namespace Neon {

	/* To be defined in client */
	App* CreateApp(CommandLineArgs args);
}

extern Neon::App* Neon::CreateApp(Neon::CommandLineArgs args);

int main(int argc, char** argv)
{
	Neon::Log::Init();

	auto app = Neon::CreateApp({ argc, argv });
	app->Run();
	delete app;
}

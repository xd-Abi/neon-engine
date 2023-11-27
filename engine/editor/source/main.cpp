#include <neon/neon.h>
#include <neon/entry.h>

namespace Neon {

	App* CreateApp(CommandLineArgs args)
	{
		AppSpecficiation spec;
		spec.Name = "Neon Engine";
		spec.CommandLineArgs = args;

		return new App(spec);
	}
}

#include <neon/entry.h>

namespace Neon {

	Application* CreateApp()
	{
		ApplicationSpecification spec;
		spec.Name = "Neon Engine";

		return new Application(spec);
	}
}

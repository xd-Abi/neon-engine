#include <neon/common/log.h>

void Log(const std::string& fmt) {
	printf(fmt.c_str());
	printf("\n");
}

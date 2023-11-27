#pragma once

#include <neon/neon.h>

int main(int argc, char** argv)
{
	Neon::Log::Init();
	Neon::Log::GetCoreLogger()->info("Welcome to Neon!");
}

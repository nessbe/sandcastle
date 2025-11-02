-- File:       sandcastle.lua
-- Project:    sandcastle
-- Repository: https://github.com/nessbe/sandcastle
--
-- Copyright (c) 2025 nessbe
-- This file is part of the sandcastle project and is licensed
-- under the terms specified in the LICENSE file located at the
-- root of this repository.
--
-- Unless required by applicable law or agreed to in writing,
-- the software is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the LICENSE file for details.

project "sandcastle"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++14"

	targetdir("%{wks.location}/build/bin/%{prj.name}")
	objdir("%{wks.location}/build/obj/%{prj.name}")

	files {
		"include/**.hpp",
		"include/**.inl",
		"source/**.cpp"
	}

	includedirs {
		"include"
	}

	filter "configurations:debug"
		defines "SANDCASTLE_DEBUG"
		symbols "On"
		runtime "Debug"

	filter "configurations:release"
		defines "SANDCASTLE_RELEASE"
		optimize "On"
		runtime "Release"

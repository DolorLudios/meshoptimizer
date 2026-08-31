project "meshoptimizer"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("bin/int/" .. OutputDir .. "/%{prj.name}")

    files
    {
        "src/*.h",
        "src/*.cpp",
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        pic "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"

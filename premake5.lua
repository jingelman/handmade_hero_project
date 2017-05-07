-- premake5.lua
workspace "handmadeHero"
    configurations { "Debug", "Release" }

project "handmadeHero_project"
    location "build/handmade_hero"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "**.h", "**.c" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        flags { symbols "On" }

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
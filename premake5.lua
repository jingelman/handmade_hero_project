-- premake5.lua
workspace "handmadeHero"
    configurations { "Debug", "Release" }
    platforms { "Win32" }

    filter { "platforms:Win64" }
    system "Windows"
    architecture "x64"

project "handmadeHero_project"
    location "build/handmade_hero"
    kind "WindowedApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "**.h", "**.c" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        flags { symbols "On", "WinMain" }

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
workspace "star-castle"
   architecture "x86_64"
   configurations { "Debug", "Release"}

project "star-castle"
   kind "ConsoleApp"
   language "C"
   cdialect "c99"
   targetdir "bin"
   includedirs { "include" }
   files { "src/**.cpp", "include/**.hpp", "include/**.cpp", "include/**.h" }
   
   links { "glfw", "GL", "GLEW" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      optimize "On"
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"


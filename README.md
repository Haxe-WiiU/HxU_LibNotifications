# Haxe-WiiU - LibNotifications
With this library, you can make use of [libnotifications](https://github.com/wiiu-env/libnotifications) library functions natively in Haxe, to develop homebrew for the Nintendo Wii U. This is a library in conjunction with [HxCompileU](https://github.com/Slushi-Github/hxCompileU), which is the utility for compiling to the Wii U using [Reflaxe.CPP](https://github.com/SomeRanDev/reflaxe.CPP).


This library is **NOT** for normal use in Haxe, do not try to use it in a common project.


# Installation
To install this library, just install it through Haxelib:
```
haxelib git hxu_libnotifications https://github.com/Haxe-WiiU/HxU_LibNotifications
```
And then add the library to your HxCompileU JSON config (You need [HxCompileU](https://github.com/Slushi-Github/hxCompileU) version 1.3.5 or higher):
```json
{
    "extraLibs": ["libnotifications"],
}
```

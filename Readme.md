[![ci](https://github.com/emrekovanci/Template-CPP/actions/workflows/ci.yml/badge.svg)](https://github.com/emrekovanci/Template-CPP/actions/workflows/ci.yml)

Template project for developing C++ applications.

### CMake Presets

This project makes use of [CMake Presets][1] to simplify the process of configuring
the project.

To build the project, please make sure you have [vcpkg][2]
installed and properly set up at least with the `VCPKG_ROOT` environment variable pointing
to the right place.

### List Presets
```
cmake --list-presets=all
```

### Sourcing the Environment
If you're building with Ninja and the Visual C++ toolset on Windows, set the environment before CMake is called to generate the build system. You can do it by calling [vcvarsall.bat][3] with the `architecture` argument.
```
/path/to/vcvarsall.bat x64
```

### Configure & Build & Test
```
cmake --preset=<configurePreset-name>
```
```
cmake --build --preset=<buildPreset-name>
```
```
ctest --preset=<testPreset-name>
```

### Workflow
```
cmake --workflow --preset=<workflowPreset-name>
```

[1]: https://cmake.org/cmake/help/latest/manual/cmake-presets.7.html
[2]: https://github.com/microsoft/vcpkg
[3]: https://learn.microsoft.com/en-us/cpp/build/cmake-presets-vs?view=msvc-170#sourcing-the-environment-when-building-with-command-line-generators-on-windows

[![ci](https://github.com/emrekovanci/Template-CPP/actions/workflows/ci.yml/badge.svg)](https://github.com/emrekovanci/Template-CPP/actions/workflows/ci.yml)

Template project for developing C++ applications.

### CMake Presets

This project makes use of [CMake Presets][1] to simplify the process of configuring
the project.

To build the project, please make sure you have [vcpkg][2]
installed and properly set up at least with the `VCPKG_ROOT` environment variable pointing
to the right place.

### List Presets

```powershell
cmake --list-presets=all
```

### Configure & Build & Test

```powershell
cmake --preset=<configurePreset-name>
```

```powershell
cmake --build --preset=<buildPreset-name>
```

```powershell
ctest --preset=<testPreset-name>
```

### Development on Windows

- Sourcing the Environment
  - If you're building with Ninja and the Visual C++ toolset on Windows, set the environment before CMake is called to generate the build system. You can do it by calling [vcvarsall.bat][3] with the `architecture` argument.

    ```powershell
    /path/to/vcvarsall.bat x64
    ```

- [Clang/LLVM support in Visual Studio][4]

[1]: https://cmake.org/cmake/help/latest/manual/cmake-presets.7.html
[2]: https://github.com/microsoft/vcpkg
[3]: https://learn.microsoft.com/en-us/cpp/build/cmake-presets-vs?view=msvc-170#sourcing-the-environment-when-building-with-command-line-generators-on-windows
[4]: https://learn.microsoft.com/en-us/cpp/build/clang-support-msbuild?view=msvc-170

# cpp-application
cpp application structure

## Structure

- build: just to keep your code clean and mess free, include release and debug subdirectory;
- doc: documents;
- include: include directory must strictly contain headers that need to be exposed publicly;
- src: This directory basically contains all the source code and the header files that are for internal use only;
- libs: This directory consists all the third party libraries that are need by your project. There are two ways of using third party libraries in C++ — static and dynamic. By convention, library files are name with ‘lib’ as a prefix or a suffix. This is important and must be kept in mind during compilation, both manually or using CMake.
- test: code for unit testing is kept in this directory;
- CMakeList.txt: a configuration file that tells CMake what to do. CMake is not a build system, but a build system generator. The sole purpose of CMake tool is to generate what we call a Make file;
- build.sh: build script, normally using docker to build;

## Build

Classical steps:

1. mkdir build
2. cd build
3. cmake ..
4. make release / make debug

## CMakeLists.txt from scratch

1. Path to the files that you have written and wish to compile.
2. Path to all the header files, including the ones used from 3rd party libraries.
3. Paths to third party libraries’ .a files.
4. Names of the .a files that we want the compiler to link with our code.

CMakeLists.txt file can be subdivided into 5 major sections:

1. Flags
2. Files
3. Include
4. Targets
5. External libraries
6. Unit Testing

- cmake version
It is just to tell CMake which version of the tool it shall use. In case the version of CMake on your machine is older than the one mentioned on this file, then the CMake tool simply can’t be used to build your code. ( Either update CMake on your machine, or try to dial down the number on this file ).

- project name
It is to name your project.

- flags
This section is to tell CMake which compiler and compiler version you wish to build your project with. If you don’t set anything, it will pick the best fit on its own.

- files
In this section we basically specify all the files and club then into sensible variable names like source, include, etc. It is just to ease things out, but if you wish you can totally skip this section and use the file names directly instead of the variables.

- include
This command is used to specify the path of the include directories that you want the compiler to look into while searching for header files while compiling your code. This will also include the header files from 3rd party libraries, like Logger.

- target
This is the part where we tell CMake the name of the output file, in our case we wish to name it as binary. Whatever files names follow after that are basically your source files same way as you do while compiling them manually.

- external library
This part is what we call linking in compilation terms. So what you have done is you have included the header files of these 3rd party libraries and now you need to tell the compiler where exactly are these libraries located.
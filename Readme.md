

## Sample 1

* [![](https://img.shields.io/badge/native_C%2B%2B-passing-brightgreen.svg?style=flat)](https://ci.appveyor.com/project/3Fs/ci-msbuild-demo/build/build-4)
* [![](https://img.shields.io/badge/.NET_(CLR)-passing-brightgreen.svg?style=flat)](https://ci.appveyor.com/project/3Fs/ci-msbuild-demo/build/build-5)

This is a simple example ([Readme](https://github.com/3F/CI.MSBuild.Demo/blob/master/native%20C%2B%2B/Sample1/Readme.md)) for work with - CI.MSBuild / vsSolutionBuildEvent. You will see next features:

* Unified work in different environment with MSBuild & Visual Studio.
* Work with [FileComponent](http://vssbe.r-eg.net/doc/Scripts/SBE-Scripts/Components/FileComponent/)
* Work with [C# Mode](http://vssbe.r-eg.net/doc/Modes/CSharp/) / [Targets Mode](http://vssbe.r-eg.net/doc/Modes/Targets/) / [Files Mode](http://vssbe.r-eg.net/doc/Modes/) / [Interpreter Mode](http://vssbe.r-eg.net/doc/Modes/)
* How to detect the first & last project of build-order in solution of Visual Studio. And how to use directly [SBE-Scripts](http://vssbe.r-eg.net/doc/Scripts/SBE-Scripts/) engine from C# Mode, for example:


```csharp

   ...
    ProjectsMap map = new ProjectsMap(@"$(SolutionPath)");

    string data = @"

        #[( #[Build type] != Clean )
        {{
            #[var firstProject = {0}] #[var lastProject = {1}]
        }}
        else {{
            #[var firstProject = {1}] #[var lastProject = {0}]
        }}]
    ";

    cmd.SBEScript.parse(String.Format(data, map.getFirst().name, map.getLast().name));
   ...
```


[gist](https://gist.github.com/3F/b1f613511737121a4bd1)

* and others...

As result you can see, for example:

```


 - I'm the action in 'Script Mode' for Pre-Rebuild Event :: I started Before Rebuild - 'ClassLibrary2' (btw, StartUp project - 'Sample1').
 - I'm very simple action in 'Interpreter Mode' :: I also started Before - 'ClassLibrary2'. 
 - I'm the action in 'Script Mode' for Post-Rebuild Event :: I started After Rebuild the all projects. I mean after 'ConsoleApplication1'!
 - I only for Build/Rebuild operations and I'm working only if I can't see any errors with your build.

```
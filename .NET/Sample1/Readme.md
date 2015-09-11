`[[ This is a Sample 1 with .NET projects for work with - vsSolutionBuildEvent (vsSBE) ]]`

* The 'Sample1.sln' file - ready for VS2013 & VS2015. Open it in your IDE, and try to Rebuild for Debug & Release configurations.
* The all 'build_*.bat' files - ready for MSBuild v12.0 & v14.0. Simply click it, and watch similar as in result above.
    * ./build_v14.0_[Release].bat - [![](https://img.shields.io/badge/build-passing-brightgreen.svg?style=flat)](https://ci.appveyor.com/project/3Fs/ci-msbuild-demo/build/build-5)
* See similar Sample 1 with native C++ projects in /native C++/Sample1/


You can get information about this:

* Here: http://visualstudiogallery.msdn.microsoft.com/0d1dbfd7-ed8a-40af-ae39-281bfeca2334/
* Or here: http://vssbe.r-eg.net


Note to Sample 1:

* The 'result.log' should appear after the all operations and will be opened automatically for Debug configuration.
* Confirmation dialog is also used only in Debug configuration.
* All content from 'result.log' will be displayed in stdout for all configurations.
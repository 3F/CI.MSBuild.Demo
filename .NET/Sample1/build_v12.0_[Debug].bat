.nuget\nuget restore Sample1.sln 
"C:\Program Files (x86)\MSBuild\12.0\bin\msbuild.exe" "Sample1.sln" /verbosity:normal  /l:"packages\vsSBE.CI.MSBuild.1.5.0\bin\CI.MSBuild.dll" /m:12 /t:Rebuild /p:Configuration=Debug
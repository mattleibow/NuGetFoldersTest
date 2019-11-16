mkdir output -force | out-null
if (test-path NuGetFoldersTest\packages\dummylibrary) {
  ri NuGetFoldersTest\packages\dummylibrary -recurse
}

msbuild /restore DummyLibrary\DummyLibrary.sln

nuget pack DummyLibrary\DummyLibrary.nuspec -OutputDirectory output

msbuild /restore NuGetFoldersTest\NuGetFoldersTest.sln

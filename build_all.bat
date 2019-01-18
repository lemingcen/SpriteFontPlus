dotnet --version
dotnet build build\Monogame\SpriteFontPlus.sln /p:Configuration=Release --no-incremental
dotnet build build\FNA\SpriteFontPlus.sln /p:Configuration=Release --no-incremental
call copy_zip_package_files.bat
rename "ZipPackage" "SpriteFontPlus.%APPVEYOR_BUILD_VERSION%"
7z a SpriteFontPlus.%APPVEYOR_BUILD_VERSION%.zip SpriteFontPlus.%APPVEYOR_BUILD_VERSION%

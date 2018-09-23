@echo off

rem  only finds .lib files for ILMBase
REM del CMakeCache.txt

cmake -G "Visual Studio 14 2015 Win64" ^
-DCMAKE_INSTALL_PREFIX=D:/Applications/alembic/v1.7.1/boost_1_61_0_x64 ^
-DILMBASE_ROOT=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64 ^
-DUSE_HDF5=OFF ^
-DUSE_EXAMPLES=ON ^
-DUSE_PYALEMBIC=OFF ^
-DBOOST_ROOT=D:/Applications/boost/v1.61.0/x64 ^
-DUSE_STATIC_BOOST=OFF ^
-DZLIB_ROOT=D:\programming\ext\zlib-1.2.11\build ^
-DILMBASE_ROOT=D:\Applications\OpenExr\v2.2.1-2\boost_1_61_0_x64 ^
-DPYILMBASE_ROOT=D:\Applications\OpenExr\v2.2.1-2\boost_1_61_0_x64 ^
-DALEMBIC_PYILMBASE_PYIMATH_LIB=D:\Applications\OpenExr\v2.2.1-2\boost_1_61_0_x64\lib\PyImath.lib ^
-DUSE_TESTS=OFF ^
-L ^
..

cmake --build . --config Release
REM cmake --build . --config RelWithDebInfo
REM cmake --build . --config Debug
cmake --build . --target INSTALL

REM -DZLIB_ROOT=D:/programming/ext/zlib-1.2.11/build ^
REM -DBOOST_ROOT=D:/Applications/boost/v1.61.0/x64 ^
REM 
REM -DALEMBIC_ILMBASE_HALF_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/Half-2_2.lib ^
REM -DALEMBIC_ILMBASE_IEX_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/Iex-2_2.lib ^
REM -DALEMBIC_ILMBASE_IEXMATH_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/IexMath-2_2.lib ^
REM -DALEMBIC_ILMBASE_ILMTHREAD_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/IlmThread-2_2.lib ^
REM -DALEMBIC_ILMBASE_IMATH_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/Imath-2_2.lib ^
REM -DUSE_PYALEMBIC:BOOL=off ^
REM -DUSE_PRMAN:BOOL=off ^
REM -DUSE_ARNOLD:BOOL=off ^
REM -DUSE_MAYA:BOOL=off ^
REM -DPYTHON_ROOT=C:/Python27_64bit ^
REM -DALEMBIC_NO_BOOTSTRAP=1 ^
REM -DALEMBIC_PYILMBASE_PYIMATH_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/PyImath.lib ^
REM -DPYILMBASE_ROOT=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64 ^
REM -DHDF5_ROOT=D:/Applications/hdf5/1.8.11-win64 ^
REM -DGLUT_ROOT_PATH=D:/Applications/freeGLUT/v3.0.0_x64 ^
REM -DALEMBIC_NO_TESTS:bool=on ^

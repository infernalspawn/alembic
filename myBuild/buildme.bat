@echo off

rem  only finds .lib files for ILMBase
REM del CMakeCache.txt

cmake -G "Visual Studio 14 2015 Win64" ^
-DCMAKE_INSTALL_PREFIX=D:/Applications/alembic/v1.5.2/boost_1_61_0_x64 ^
-DZLIB_ROOT=D:/programming/ext/zlib-1.2.11/build ^
-DBOOST_ROOT=D:/Applications/boost/v1.61.0/x64 ^
-DILMBASE_ROOT=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64 ^
-DALEMBIC_ILMBASE_HALF_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/Half-2_2.lib ^
-DALEMBIC_ILMBASE_IEX_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/Iex-2_2.lib ^
-DALEMBIC_ILMBASE_IEXMATH_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/IexMath-2_2.lib ^
-DALEMBIC_ILMBASE_ILMTHREAD_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/IlmThread-2_2.lib ^
-DALEMBIC_ILMBASE_IMATH_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/Imath-2_2.lib ^
-DUSE_PYALEMBIC:BOOL=off ^
-DUSE_PRMAN:BOOL=off ^
-DUSE_ARNOLD:BOOL=off ^
-DUSE_MAYA:BOOL=off ^
-DPYTHON_ROOT=C:/Python27_64bit ^
-DALEMBIC_NO_BOOTSTRAP=1 ^
-DALEMBIC_PYILMBASE_PYIMATH_LIB=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64/lib/PyImath.lib ^
-DPYILMBASE_ROOT=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64 ^
-DHDF5_ROOT=D:/Applications/hdf5/1.8.11-win64 ^
-DGLUT_ROOT_PATH=D:/Applications/freeGLUT/v3.0.0_x64 ^
-DALEMBIC_NO_TESTS:bool=on ^
-L ^
..

cmake --build . --config Release
REM cmake --build . --config RelWithDebInfo
REM cmake --build . --config Debug
REM cmake --build . --target INSTALL


REM -DILMBASE_ROOT=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64 ^
REM -DALEMBIC_ILMBASE_LINK_STATIC=ON ^
REM -DPYILMBASE_ROOT=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64 ^
REM -DUSE_PYALEMBIC=on ^
REM 
REM -DUSE_STATIC_BOOST=off ^
REM -DUSE_EXAMPLES=on ^
REM -DUSE_TESTS=off ^

REM -DGLUT_INCLUDE_DIR=D:/Applications/OpenExr/v2.2.1-2/boost_1_61_0_x64 ^
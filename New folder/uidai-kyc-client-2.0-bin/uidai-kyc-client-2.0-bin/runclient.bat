echo off

echo Enter OS Type (1: 32-bit, 2: 64 Bit):
set /p OSBITS=

IF %OSBITS%==1 set OSTYPE=win32
IF %OSBITS%==2 set OSTYPE=x64

echo %OSTYPE%

set PATH=%PATH%;dll\%OSTYPE%

set KEYFILE=pub

set PROP_DEC_PASS=UID12345

echo Starting Authentication Client using %OSTYPE% DLLs

java -Dfile.encoding=UTF-8 -cp .;jar/*  -Xms512m -Xmx756m in.gov.uidai.auth.sampleapp.SampleClientMainFrame

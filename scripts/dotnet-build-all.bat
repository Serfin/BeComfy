@echo off

REM Build Common lib first
set path[0]="BeComfy.Common/src/BeComfy.Common"

REM Build API
set path[1]="BeComfy.Api/src/BeComfy.Api"

REM Build Microservices
set path[2]="BeComfy.Services.Flights/src/BeComfy.Services.Flights"
set path[3]="BeComfy.Services.Airplanes/src/BeComfy.Services.Airplanes"
set path[4]="BeComfy.Services.Identity/src/BeComfy.Services.Identity"

set "x=0"
cd ../..

:SymLoop
if defined path[%x%] (
    call cd %%path[%x%]%%
    call dotnet build
    call cd ../../..
    set /a "x+=1"
    GOTO :SymLoop
)

cd "BeComfy/scripts"
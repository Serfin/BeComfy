@echo off

REM Build Common lib first
set path[0]="BeComfy.Common/src/BeComfy.Common"

set path[1]="BeComfy.Api/src/BeComfy.Api"
set path[2]="BeComfy.Services.Flights/src/BeComfy.Services.Flights"

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
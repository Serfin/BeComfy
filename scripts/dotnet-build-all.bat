@echo off

REM Build Common lib first
set list="BeComfy.Common/src/BeComfy.Common"
set list="BeComfy.Common/src/BeComfy.Logging"

REM Build API
set list=%list%;"BeComfy.Api/src/BeComfy.Api"

REM Build Microservices
set list=%list%;"BeComfy.Services.Flights/src/BeComfy.Services.Flights"
set list=%list%;"BeComfy.Services.Airplanes/src/BeComfy.Services.Airplanes"
set list=%list%;"BeComfy.Services.Identity/src/BeComfy.Services.Identity"
set list=%list%;"BeComfy.Services.Tickets/src/BeComfy.Services.Tickets"
set list=%list%;"BeComfy.Services.Customers/src/BeComfy.Services.Customers.Api"
set list=%list%;"BeComfy.Services.SignalR/src/BeComfy.Services.SignalR"
set list=%list%;"BeComfy.Services.Employees/src/BeComfy.Services.Employees.Api"

cd ../..

@echo off

echo ======================================================================
echo                       BeComfy - Build plan
echo ====================================================================== 


for %%a in (%list%) do (
    echo ======================================================================
    echo    Build %%a
    echo ======================================================================
    echo/

    call cd %%a
    call dotnet build

    echo/
    echo ======================================================================
    echo    Done %%a
    echo ======================================================================
    echo/

    call cd ../../..
)

cd "BeComfy/scripts"
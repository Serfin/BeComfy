@echo off

set list="BeComfy.Api/src/BeComfy.Api"
set list=%list%;"BeComfy.ApiGateway.Ocelot/src/BeComfy.ApiGateway.Ocelot"
set list=%list%;"BeComfy.Services.Flights/src/BeComfy.Services.Flights"
set list=%list%;"BeComfy.Services.Airplanes/src/BeComfy.Services.Airplanes"
set list=%list%;"BeComfy.Services.Identity/src/BeComfy.Services.Identity"
set list=%list%;"BeComfy.Services.Tickets/src/BeComfy.Services.Tickets"
set list=%list%;"BeComfy.Services.Customers/src/BeComfy.Services.Customers.Api"
set list=%list%;"BeComfy.Services.SignalR/src/BeComfy.Services.SignalR"
set list=%list%;"BeComfy.Services.Employees/src/BeComfy.Services.Employees.Api"

cd ../..

for %%a in (%list%) do (
    echo ============================================================
    echo    Run %%a
    echo ============================================================
    echo/

    call cd %%a
    REM start cmd /k dotnet run
    start powershell -Command dotnet run
    call cd ../../..
)
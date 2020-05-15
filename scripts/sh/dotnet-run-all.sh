#!/bin/bash

# Build Common lib first, then api and services
paths=(
    "BeComfy.Api/src/BeComfy.Api"
    "BeComfy.Services.Flights/src/BeComfy.Services.Flights"
    "BeComfy.Services.Airplanes/src/BeComfy.Services.Airplanes"
    "BeComfy.Services.Identity/src/BeComfy.Services.Identity"
    "BeComfy.Services.Tickets/src/BeComfy.Services.Tickets"
    "BeComfy.Services.Customers/src/BeComfy.Services.Customers.Api"
    "BeComfy.Services.SignalR/src/BeComfy.Services.SignalR"
    "BeComfy.Services.Employees/src/BeComfy.Services.Employees.Api"
)

cd ../../..

clear

for path in "${paths[@]}"
do
    cd $path
    gnome-terminal --tab -- dotnet run
    cd ../../..
done

cd "BeComfy/scripts"
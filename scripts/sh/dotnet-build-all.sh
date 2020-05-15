#!/bin/bash

# Build Common lib first, then api and services
paths=(
    "BeComfy.Common/src/BeComfy.Common"
    "BeComfy.Common/src/BeComfy.Logging"
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

echo "======================================================================"
echo "                      BeComfy - Build plan"
echo "======================================================================" 


for path in "${paths[@]}"
do
    echo "======================================================================"
    echo "   Build - ${path}"
    echo "======================================================================"
    echo

    cd $path

    dotnet build

    echo
    echo "======================================================================"
    echo "   Done - ${path}"
    echo "======================================================================"
    echo

    cd ../../..
done

cd "BeComfy/scripts"
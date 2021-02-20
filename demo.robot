*** Settings ***


*** Test Cases ***
Test case 1
    Do Somthing
    Do Somthing else

Test case 2
    Do Another Things
    Do Somthing else

*** Keywords ***
Do Somthing
    Log  I am doing something...
Do Somthing else
    Log  I am doing something else...
Do Another Things
    Log  I am doing another thing...
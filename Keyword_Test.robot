*** Settings ***
Documentation  This is some basic info about the shopping cart test
Resource  Resources/Amazon.robot  #PATH Resources/Amazon.robot Pour utiliser les Keywords
Resource  Resources/Common.robot

Suite Setup  Insert Testing Data  #avant Debut
Test Setup  Begin Web Test  #Debut
Test Teardown  End of the Test  #Fin
Suite Teardown  Cleanup Testing Data  #apres fin

*** Variables ***

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic about test
    [Tags]  Smoke
    Amazon.Search for the Product
    #Resource name.Keyword

User must sign in to check out
    [Documentation]  This is some basic about test
    [Tags]  Smoke
    Amazon.Search for the Product
    Amazon.Select Product from Search Results
    Amazon.Add Product to the Cart
    Amazon.Begin Checkout and Verification
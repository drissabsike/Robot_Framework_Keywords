*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome

End of the Test
    Close Browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    log  i am cleaning up the test data


Custom Keyword 1
    log  i'am inserting testing data k1

Custom Keyword 2
    log  i'am inserting testing data k2
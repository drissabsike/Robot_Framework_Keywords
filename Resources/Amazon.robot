*** Settings ***
Library  Selenium2Library

*** Keywords ***
Search for the Product
    Go To  http://www.amazon.com
    Maximize Browser Window
    wait until page contains  Today's Deals
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search-submit-button"]
    wait until page contains  results for "Ferrari 458"

Select Product from Search Results
    click link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/h2/a
    wait until page contains  Back to results

Add Product to the Cart
    click button  id=add-to-cart-button
    wait until page contains  Proceed to checkout (1 item)

Begin Checkout and Verification
    click element  xpath=//*[@id="hlb-ptc-btn-native"]
    Page Should Contain Element  //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/div[3]/div/a/span  #xpath
    Element Text Should Be  //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/div[3]/div/a/span  Need help?
    Sleep  3s


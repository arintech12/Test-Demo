*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Example And Verify
    Open Browser    https://example.com    chrome
    Title Should Be    Example Domain
    Page Should Contain    example
    Close Browser

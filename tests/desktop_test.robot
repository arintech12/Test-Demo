*** Settings ***
Library           OperatingSystem
Library           Process
Library           WhiteLibrary
Library           RequestsLibrary

*** Variables ***
${json}          { "name": "Rohan", "job": "DevOps engineer" }

*** Test Cases ***
WindowsAutomation
    Launch Application     notepad.exe  
    Attach Window    Untitled - NotePad
    Input Text To Textbox    id:15   Hi Rohans
    Click Menu Button      text:Edit
    Click Menu Button      text:Select All
    Click Menu Button      text:File
    Click Menu Button      text:Save
    Input Text To Textbox    id:1001     Rohan.txt
    Click Button    id:1

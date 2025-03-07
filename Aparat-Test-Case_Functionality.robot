*** Settings ***
Library  SeleniumLibrary
Resource    ${EXECDIR}/Apparat-Steps.resource


*** Test Cases ***

Search Video's Name and Check Search's Result
    Open Browser On Chrome
    Entered Videos Name To Search Bar
    Click On Search Button
    Check Aparat WebSite Result
    Closed Browser On Chrome


Verify Skip Ad Button on Aparat
    Open Browser On Movie
    Sleep           10s
    Visible Skip Ad Button
    Click Skip Ad Button
    Sleep           5s
    Close Browser

Verify Jump Back Button on Aparat
    Open Browser On Movie
    Sleep           10s
    Visible Skip Ad Button
    Click Skip Ad Button
    Sleep           40s
    Click Jump Back Button
    Sleep           5s
    Close Browser

Verify Play Pause Toggle on Aparat
    Open Browser On Movie
    Sleep           5s
    Visible Skip Ad Button
    Click Skip Ad Button
    Sleep           5s
    Visible Play Button
    Click Play Button
    Sleep    2
    Check Pause
    Click Play Button
    Sleep    2
    Check Play
    Close Browser

Login to Aparat
    Open Browser On Chrome
    Click Login And Sign Up Button
    Sleep    10
    Close Browser

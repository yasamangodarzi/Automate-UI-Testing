*** Settings ***
Library  SeleniumLibrary
Resource    ${EXECDIR}/Apparat-Steps.resource


*** Test Cases ***
Check Main Elements on Aparat Home Page
    Open Browser On Chrome
    Check Aparat WebSite Logo
    Check Apparat WebSite SearchBar
    Closed Browser On Chrome

Check Login Button Color and Font
    Open Browser On Chrome
    Wait Until Page Contains Element    ${LOGIN_BUTTON_CSS}    timeout=10s
    ${button_color}    Get Element Attribute    ${LOGIN_BUTTON_CSS}    ${LOGIN_BUTTON_XPATH}    background-color
    ${button_font}    Get Element Attribute    ${LOGIN_BUTTON_CSS}    ${LOGIN_BUTTON_XPATH}    font-family
    ${button_font_size}    Get Element Attribute    ${LOGIN_BUTTON_CSS}    ${LOGIN_BUTTON_XPATH}    font-size

    Log    Button Color: ${button_color}
    Log    Button Font: ${button_font}
    Log    Button Font Size: ${button_font_size}

    Close Browser



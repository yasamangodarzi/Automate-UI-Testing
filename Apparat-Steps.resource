*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${BROWSER}  chrome
${TARGET_URL}  https://www.aparat.com/
${MOVIE_URL}  https://www.aparat.com/v/ksam8i7
${LOGIN_BUTTON}    css=.header-item#profile-menu button
${LOGIN_BUTTON_CSS}    css=.sc-crHmcD
${LOGIN_BUTTON_XPATH}    //button[contains(@class, 'sc-crHmcD')]

*** Keywords ***

Open Browser On Chrome
    Open Browser  ${TARGET_URL}  chrome

Open Browser On Movie
    Open Browser  ${MOVIE_URL}  ${BROWSER}

* Keywords *

Get Element Attribute
    [Arguments]    ${css}    ${xpath}    ${attribute}
    ${value}    Execute Javascript
    ...    var css = arguments[0];
    ...    var xpath = arguments[1];
    ...    var attribute = arguments[2];
    ...    var element = null;
    ...    try {
    ...        if (css && document.querySelector(css)) {
    ...            element = document.querySelector(css);
    ...        } else if (xpath) {
    ...            element = document.evaluate(xpath, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
    ...        }
    ...    } catch (e) {
    ...        return 'Invalid selector or element not found';
    ...    }
    ...    if (element === null) {
    ...        return 'Element not found';
    ...    }
    ...    return window.getComputedStyle(element).getPropertyValue(attribute);
    ...    ARGUMENTS    ${css}    ${xpath}    ${attribute}
    [Return]    ${value}

Closed Browser On Chrome
    Close Browser

Check WebSite Title
    Title Should Be  آپارات - سرویس اشتراک ویدیو

Run Test On Browser firefox
    Open Browser    ${TARGET_URL}    firefox
    Wait Until Element Is Visible  css=#header    10s
    Element Should Be Visible  css=#header


Run Test On Browser chrome
    Open Browser    ${TARGET_URL}    chrome
    Wait Until Element Is Visible  css=#header    10s
    Element Should Be Visible  css=#header

Entered Videos Name To Search Bar
    Input Text  id=search  امیرکبیر

Click On Search Button
    Press Key  id=search  \\13

Check Aparat WebSite Result
    Wait Until Page Contains  نتایج جستجوی "امیرکبیر"

Check Aparat WebSite Logo
    Element Should Be Visible  css=.header-item > a > svg.icon-logo-fa

Check Apparat WebSite SearchBar
    Element Should Be Visible  id=search

Visible Skip Ad Button
    Wait Until Element Is Visible   xpath://div[@class='vast-skip-button']    10s
    Wait Until Element Is Enabled   xpath://div[@class='vast-skip-button']    10s

Click Skip Ad Button
    Click Element   xpath://div[@class='vast-skip-button']



Click Jump Back Button
    Execute JavaScript    document.querySelector("button.romeo-button.jump-back").click()

Visible Play Button
    Wait Until Element Is Visible    //button[@class='romeo-button romeo-play-toggle']
Click Play Button
    Execute JavaScript    document.querySelector('button.romeo-button.romeo-play-toggle').click()
Check Pause
    ${pause_status}=  Get Element Attribute  xpath://button[@class='romeo-button romeo-play-toggle']  aria-label
    Should Be Equal As Strings  ${pause_status}  پخش K

Check Play
    ${play_status}=  Get Element Attribute  xpath://button[@class='romeo-button romeo-play-toggle']  aria-label
    Should Be Equal As Strings  ${play_status}  توقف K

Click Login And Sign Up Button
    Click Element  css=button[aria-label="user"]

*** Settings ***
Library  SeleniumLibrary
Resource    ${EXECDIR}/Apparat-Steps.resource


*** Test Cases ***

Open Aparat WebSite and Check Title
    Open Browser On Chrome
    Check WebSite Title
    Closed Browser On Chrome

Browser Compatibility On Firefox
   Run Test On Browser firefox
   Closed Browser On Chrome

Browser Compatibility On Chrome
   Run Test On Browser Chrome
   Closed Browser On Chrome
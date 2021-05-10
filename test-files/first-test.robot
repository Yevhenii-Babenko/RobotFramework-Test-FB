*** Settings ***
Library    SeleniumLibrary 
Library    ./lib/CustomLib.py 

*** Keywords ***
Navigate To Store
    Open Browser    http://automationpractice.com/     browser=chrome

Verify Page Title Contains Store
   ${Get_title}=    Get Title
   Should Be Equal As Strings    ${Get_title}    My Store

Signin With Dummy Email
    Click Element    css=.login
    Wait Until Page Contains Element    email    20s
    ${random_email}    Generate Random Emails    ${8}
    Press Keys    email    ${random_email}
    Press Keys    passwd    password123
    #Click Button    SubmitLogin
    #Wait Until Page Contains    Authentication failed.

*** Test Cases ***
Open Store & Verify Store
    Navigate To Store
    Verify Page Title Contains Store
    Signin With Dummy Email



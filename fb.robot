*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem
#Library    chromeWebDriver.py
Resource    Resources.robot
Resource    keywords.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Wait Until Element Is Visible    id = email
    Input Username    Jack-Jason@ex.ua
	Wait Until Element Is Visible    id = pass
	Input Password    w9_N@aFCya7dx4j
	Submit login

Search user-friend
    Set Selenium Implicit Wait    ${orig wait}
	Wait Until Element Is Visible    ${FB-Search}    ${orig timeout}
#	Input Text    xpath: //input[@aria-label= 'Пошук у Facebook']    ${FRIEND}
	Press Keys    ${INPUT-FRIEND-NAME}    ${FRIEND}
	Click Element    ${SCH-BTN}

Click on search result
	Wait Until Element Is Enabled    ${Search-result}    ${orig timeout}
	Scroll Element Into View    ${Search-result}   
#    Mouse Over    ${Search-result}
	BuiltIn.Sleep    5
#	Mouse Down    ${Search-result}
#	Scroll Element Into View    ${Search-result}
	Click Link    ${Search-result}
	BuiltIn.Sleep    5

Friend request and sending a message
#Follow-btn section 
#   Scroll Element Into View    ${Follow_Request_btn}
#	BuiltIn.Sleep    10
#	Mouse Over    ${Follow_Request_btn}
#	Wait Until Element Is Enabled    xpath: //*[starts-with(@id, 'mount_0_0')]/div/div[1]/div/div[3]/div/div/div[2]/div[1]/div/div/div[3]/div/div/div/div[2]/div/div/div/div[1]/div/div/div    timeout=10s
#	Click Button    xpath: //*[starts-with(@id, 'mount_0_0')]/div/div[1]/div/div[3]/div/div/div[2]/div[1]/div/div/div[3]/div/div/div/div[2]/div/div/div/div[1]/div/div/div 
#send a message section
	Wait Until Element Is Enabled    ${Message-Btn}    ${orig timeout}	
	Scroll Element Into View    ${Message-Btn} 
	Click Element    ${Message-Btn} 
	Wait Until Element Is Enabled    ${Text_input_field}    ${orig timeout}	
    Scroll Element Into View    ${Text_input_field}
    Wait Until Page Contains Element     ${Text_input_field}    ${orig wait}
	Scroll Element Into View    ${Text_input_field}
	Press Keys   ${Text_input_field}    ${Message}
    Wait Until Element Is Enabled    ${Sent-message-btn}
	Click Element    ${Sent-message-btn}



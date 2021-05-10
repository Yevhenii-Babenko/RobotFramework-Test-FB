*** Keywords ***
Open Browser To Login Page
	${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method    ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
	Maximize Browser Window
    Go To 	${LOGIN URL}
	BuiltIn.Sleep    3

Input Username
	[Arguments]    ${USER_NAME}
	Input Text    id: email    ${USER_NAME}

Input Password
	[Arguments]    ${PASSWORD}
	Input Text     id: pass    ${PASSWORD}

Submit login
	Click Element	name: login
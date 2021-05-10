*** Variables ***
${LOGIN URL}	https://facebook.com
${BROWSER}	Chrome
${orig timeout}	15 seconds
${orig wait}    20 seconds
${FRIEND}    Ivan Verhun
${FB-Search}    xpath: //input[@aria-label= 'Пошук у Facebook']
${INPUT-FRIEND-NAME}    xpath: //input[@aria-label= 'Пошук у Facebook']
${SCH-BTN}    xpath: // *[starts-with(@id, 'jsc_c')]/div/a
${Search-result}    xpath: //a[@aria-label= 'Ivan Verhun']
${Message-Btn}    xpath: //*[starts-with(@id, 'mount_0_0')]/div/div[1]/div/div[3]/div/div/div[2]/div[1]/div/div/div[3]/div/div/div/div[2]/div/div/div/div[2]/div
${Follow_Request_btn}    //*[contains(@role, 'button')]
${Text_input_field}     xpath: //*[starts-with(@id, 'mount_0_0')]/div/div[1]/div/div[5]/div/div[1]/div[1]/div[1]/div/div/div/div/div/div/div[2]/div/div[2]/form/div/div[3]/div[2]/div[1]/div/div/div/div/div[2]/div/div/div/div
${Message}    "Hello :) My name is Robot, 
...            I'm ready to help you with robotic tasks"
${Sent-message-btn}    xpath: //*[starts-with(@id, 'mount_0_0')]/div/div[1]/div/div[5]/div/div[1]/div[1]/div[1]/div/div/div/div/div/div/div[2]/div/div[2]/form/div/div[3]/span[2]/div
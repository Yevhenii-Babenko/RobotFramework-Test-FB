*** Settings ***
Library    ImapLibrary2
Library    String
Library    Collections
Library    ./lib/CustomLib.py
Library    BuiltIn

*** Variables ***
${ALL_POLICIES_COMMA_SEPARATED}

*** Test Cases ***
Check And Read The Email
    open mailbox  host=imap.gmail.com  user=rob408844@gmail.com  password=robRobs123!
    ${LATEST} =  wait for email  sender=jack-jason@ex.ua    timeout=60
    ${HTML} =  Get Email Body  ${LATEST}
    ${BODY} =    Remove String Using Regexp    ${HTML}    (<.*?>)
    ${Parsed_Token}=    Split String    ${BODY}
#    ${Parsed_Token}=    Get From List    ${Parsed_Token}
#    @{convert_to_list} =    Create List    ${BODY}
#    ${Token}=     Split String From Right    @{convert_to_list}    ,${SPACE}
#    ${Parsed-Token}=    Get From List    ${Token}    3
#    ${Token}=     Get From List    @{Token}
#    Log to Console    ${Parsed-Token}
Wait For Confirmation Code
    [Arguments]    ${inbox_id}
    ${code}     Extract Email Content   ${email.body}
    [Return]    ${code}
#    Log To Console        ${Parsed_Token}


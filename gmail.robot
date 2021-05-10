*** Settings ***
#Library    ImapLibrary
Library    ImapLibrary2
Library    String

*** Variables ***
${PASSWORD}    robRobs123!
${USER_GMAIL}    rob408844@gmail.com 

*** Test Cases ***
Valid login to Gmail
    Open Mailbox    host=imap.gmail.com    user=rob408844@gmail.com     password=robRobs123!
    ${LATEST} =    Wait For Email    sender=Jack-Jason@ex.ua    timeout=300
    ${parts} =    Walk Multipart Email    ${LATEST}
    FOR    ${i}    IN RANGE    ${parts}
        Walk Multipart Email    ${LATEST}
        ${content-type} =    Get Multipart Content Type
        Continue For Loop If    '${content-type}' != 'text/html'
        ${payload} =    Get Multipart Payload    decode=True
        Should Contain    ${payload}    your email
        ${HTML} =    Open Link From Email    ${LATEST}
        Should Contain    ${HTML}    Your email
    END

#    ${Paser_Body} =    Remove String Using Regexp    ${HTML}    (<.*?>)    #remove tags
#    ${Parsed_Token} =    Split String    ${string}
#    ${Parsed_Token}=    Get From List    ${Parsed_Token}    20  #position in the list
#    ${Parsed_Token} =    Get From List    ${Parsed_Token}    20  #position in the list
    #Log    We got${HTML}!
    #Close Mailbox 
*** Settings ***
Documentation     All the page objects and keywords of Register Page
Library           SeleniumLibrary


*** Variables ***
${Register_Modal}  css:._8ien

*** Keywords ***
Open Register Modal
    Click Link    xpath://a[@data-testid='open-registration-form-button']
    Wait Until Element Is Visible       ${Register_Modal}   10
Fill The Form With Empty Input
    Click element    name:firstname
    Click element    name:lastname
    Wait until element is visible      xpath:(//i[@class='_5dbc img sp_98fCI7IVTTz sx_54513f'])[1]  5
    Input text    name:lastname     wantamard
    Select From List By Value       id:day       22
    Select From List By Value       id:month       12
    Select From List By Value       id:year       1999
    Select Radio Button     sex     1
    Radio Button Should Be Set To   sex     1
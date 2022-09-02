*** Settings ***
Documentation     All the page objects and keywords of Home Page
Library           SeleniumLibrary


*** Variables ***
${SearchBar}    xpath://input[@placeholder='ค้นหาบน Facebook:']
*** Keywords ***


Wait until Element is located in the page
# Search bar only show when login
    Wait Until Element Is Visible       ${SearchBar}        timeout=10





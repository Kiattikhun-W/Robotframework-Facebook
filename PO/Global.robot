*** Settings ***
Documentation       A resource file
...
...                 The system
Library             SeleniumLibrary

*** Variables ***
${url}      https://fb.com/
*** Keywords ***
open the browser with the facebook url
     Create WebDriver   Chrome  executable_path=C:/Users/Tery/Documents/DriverPath/chromedriver.exe
     go to  ${url}
Close Browser Session
     close browser



*** Settings ***
Documentation   To validate login form
Library  SeleniumLibrary
Library    Collections
#Do first
Test Setup      open the browser with the facebook url
#Do after test all case
Resource       PO/loginPage.robot
Resource        PO/Global.robot
Resource        PO/HomePage.robot
Resource        PO/PrivateInfomation.robot
Resource        PO/RegisterPage.robot





*** Test Cases ***

Validate Register
    RegisterPage.Open Register Modal
    RegisterPage.Fill The Form With Empty Input

#Validate UnSuccessful login but user does not exist
#    loginPage.Fill the login From     ${invalid_username}     ${invalid_password}
#    loginPage.wait until Element is located in the page
#    loginPage.Verify error message if user doesn't exist
#
#
#Validate UnSuccessful login but user exist
#    loginPage.Fill the login From     ${valid_username}     ${invalid_password}
#    loginPage.wait until Element is located in the page
#    loginPage.Verify error message if user exist
#
#Validate Successful login
#    loginPage.Fill the login From     ${valid_username}     ${valid_password}
#    HomePage.Wait until Element is located in the page





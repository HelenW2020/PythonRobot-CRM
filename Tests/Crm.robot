*** Settings ***
Documentation    This is some basic
Resource    ../Resources/CrmApp.robot
Resource    ../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =   edge
${URL} =   https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =  helenw07@live.com
${VALIG_LOGIN_PASSWORD} =   MyPassword!

*** Test Cases ***
Home page should load
    [Documentation]     Test the home page
    [Tags]              1001    Smoke   Home

    CrmApp.Go to "Home" Page
    CrmApp.Login with Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALIG_LOGIN_PASSWORD}

Should be able to Login with Valid Credentials
    [Documentation]     Test the login
    [Tags]              1002    Smoke   Login

    CrmApp.Go to "Home" Page

Should be able to Login with Valid Credentials
    [Documentation]     Test the log out
    [Tags]              1004    Smoke   Login

    CrmApp.Go to "Home" Page
    CrmApp.Login with Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALIG_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]     Test adding a new customer
    [Tags]              1006    Smoke   Contacts

    CrmApp.Go to "Home" Page
    CrmApp.Login with Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALIG_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out

*** Keywords ***



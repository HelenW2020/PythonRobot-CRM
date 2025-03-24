*** Settings ***
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/LoggedOut.robot

*** Variables ***



*** Keywords ***
Go to "Home" Page
    Home.Navigate to
    Home.Verify Page Loaded

Login with Valid Credentials
    [Arguments]     ${Email}    ${Password}
    TopNav.Click "Sign In" link
    SignIn.Verify Page Loaded
    SignIn.Login with valid credentials    ${Email}     ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" link
    LoggedOut.Verify Page Loaded
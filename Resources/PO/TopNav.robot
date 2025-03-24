*** Settings ***
Library     SeleniumLibrary





*** Variables ***
${TOPNAV_SIGNIN_LINK} =   id=SignIn
${TOPNAV_SIGNOUT_LINK} =   Sign Out

*** Keywords ***
Click "Sign In" link
    click link            ${TOPNAV_SIGNIN_LINK}

Click "Sign Out" link
    click link            ${TOPNAV_SIGNOUT_LINK}
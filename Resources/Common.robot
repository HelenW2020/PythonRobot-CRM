*** Settings ***
Library    SeleniumLibrary





*** Variables ***



*** Keywords ***

Begin Web Test
    #Initialize Selenium
   # set selenium speed      .2s
   # set selenium timeout    10s

    #open the borowser
    log                 Starting the test case!
    open browser        about:blank       ${BROWSER}


    #resize browser close window
    set window position    x=341    y=169
    set window size         width=1935  height=1090


End Web Test
    close all browsers
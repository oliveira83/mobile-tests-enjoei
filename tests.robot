*** Settings ***
Library     AppiumLibrary

*** Variables ***
# Setup do device
${REMOTE_URL}          http://localhost:4723/wd/hub
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    11.0
${DEVICE_NAME}         emulator-5554
${APP_PACKAGE}         com.google.android.calculator
${APP_ACTIVITY}        com.android.calculator2.Calculator
${AUTOMATION_NAME}     appium

*** Test Cases ***
Calc soma
    Open Calc 
    Click Element   id=com.google.android.calculator:id/digit_9
    Click Element   id=com.google.android.calculator:id/op_add
    Click Element   id=com.google.android.calculator:id/digit_9
    Click Element   id=com.google.android.calculator:id/eq

Calc multiplica
    Open Calc 
    Click Element   id=com.google.android.calculator:id/digit_9
    Click Element   id=com.google.android.calculator:id/op_mul
    Click Element   id=com.google.android.calculator:id/digit_9
    Click Element   id=com.google.android.calculator:id/eq

Calc divide
    Open Calc 
    Click Element   id=com.google.android.calculator:id/digit_9
    Click Element   id=com.google.android.calculator:id/op_div
    Click Element   id=com.google.android.calculator:id/digit_9
    Click Element   id=com.google.android.calculator:id/eq

*** Keywords ***
Open Calc 
  Open Application  ${REMOTE_URL}   automationName=${AUTOMATION_NAME}
  ...  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}
  ...  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}
    

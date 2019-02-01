*** Settings ***
Library    Remote    http://134.157.27.161:8270       WITH NAME    Example1

Documentation  This is my end to end suite
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/FrontOffice/FrontOfficeAPP.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/BackOffice/Back_Office.robot

*** Variables ***
${BROWSER} =  chrome
${BACK_OFFICE__URL} =  http://www.robotframeworktutorial.com/back-office
${FRONT_OFFICE_URL} =  http://www.robotframeworktutorial.com/front-office
*** Test Cases ***
Should be able to access boths pages
    [Documentation]  This is test 1
    [Tags]  test1
    BackOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to Landing Page


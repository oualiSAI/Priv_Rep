*** Settings ***
Documentation  Talks about what this suite of tests does

Resource    ../../Resources/FrontOffice/FrontOfficeAPP.robot
Resource    ../../Resources/Common/CommonWeb.robot

Suite Setup    CommonWeb.Begin Web Test
Suite Teardown    CommonWeb.End Web Test
*** Variables ***
${FRONT_OFFICE_URL} =  http://www.robotframeworktutorial.com/front-office
${BROWSER} =  firefox

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  This is test 2
    [Tags]  test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page
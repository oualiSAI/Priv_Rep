*** Settings ***
Resource  ./PO/FrontOffice_Landing.robot
Resource  ./PO/FrontOffice_TopNav.robot
Resource  ./PO/FrontOffice_Team.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    FrontOffice_Landing.Navigate To
    FrontOffice_Landing.Verify Page Loaded

Go to "Team" Page
    FrontOffice_TopNav.Select "Team" Page
    FrontOffice_Team.Verify Page Loaded

Validate "Team" Page
    FrontOffice_Team.Validate Page Contents
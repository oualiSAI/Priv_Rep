*** Settings ***
Resource  ./PO/BackOffice_Landing.robot
Resource  ./PO/BackOffice_TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    BackOffice_Landing.Navigate To
    #Landing.Verify Page Loaded


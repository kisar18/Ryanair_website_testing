*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  ../keywords.robot
Resource  ../repositories/buttons_repository.robot
Resource  ../repositories/other_elements_repository.robot

*** Variables ***
${ChromeBrowser}  Chrome
${SafariBrowser}  Safari
${URL}  https://www.ryanair.com/cz/cs
${NewURL}
${UI_Element}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/div/fsw-flight-search-widget-controls-container/fsw-flight-search-widget-content-container/fsw-flight-search-widget-content/div[2]/div/button
${Result_Title}  Oficiální internetové stránky Ryanair | Levné lety | Exkluzivní nabídka

*** Test Cases ***
# You can run tests by command: python3 -m robot FILENAME.robot

Pre-Conditions
  Pre Condition Open Browser And Maximize  ${ChromeBrowser}  ${URL}  ${UI_Element}  0.2

TC01-Ryanair_MainPage_Navigate_To_LoginPage
  Navigate To Page By Button And Check Title  ${Login_Menu_Button}  ${Result_Title}

TC02-Ryanair_LoginPage_Login_With_Empty_Fields
  Login With Empty Fields  Je třeba uvést e-mail

TC03-Ryanair_LoginPage_Login_With_Incorrect_Informations
  Login With Email Password  email  passwd  Neplatný formát e-mailové adresy

TC04-Ryanair_LoginPage_Login_With_Bad_Email_Format
  Login With Email Password  email@com  passwd  Neplatný formát e-mailové adresy

TC05-Ryanair_LoginPage_Login_With_Correct_Name_And_Incorrect_Password
  Login With Email Password  mapewe1725@giratex.com  passwd  Neplatný e-mail nebo heslo

TC06-Ryanair_LoginPage_Login_With_Non_Existing_Email
  Login With Email Password  Ema1l@l1amE.com  passwd  Neplatný e-mail nebo heslo

TC07-Ryanair_LoginPage_Login_With_Correct_Name_And_Correct_Password
  Login With Email Password  mapewe1725@giratex.com  Hesl0Hesl0  mapewe1725@giratex.com

Post-Conditions
  Post Condition Close Browser
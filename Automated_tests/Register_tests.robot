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

TC01-Ryanair_MainPage_Navigate_To_RegisterPage
  Navigate To Page By Button And Check Title    ${Register_Menu_Button}    ${Result_Title}

TC02-Ryanair_RegisterPage_Register_With_Empty_Fields
  Register With Empty Fields  Je třeba uvést e-mail

TC03-Ryanair_RegisterPage_Register_With_Email
  Register With Email Result Text  email  Neplatný formát e-mailové adresy

TC04-Ryanair_RegisterPage_Register_With_Email_Without_Dot
  Register With Email Result Text  email@email  Neplatný formát e-mailové adresy

TC05-Ryanair_RegisterPage_Register_With_Email_Without_At_Sign
  Register With Email Result Text  email.email  Neplatný formát e-mailové adresy

TC06-Ryanair_RegisterPage_Register_With_Non_Existing_Email
  Register With Incorrect Value In Field Result Label Color  ${Register_Email_Field}  Ema1l@l1amE.com  \#cf2e1d

TC07-Ryanair_RegisterPage_Register_With_Weak_Password
  Register With Incorrect Value In Field Result Label Color  ${Register_Password_Field}  passwd  \#cf2e1d

Post-Conditions
  Post Condition Close Browser
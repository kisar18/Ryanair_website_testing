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

TC_05_01-Ryanair_MainPage_Swaping_Searches
  MainPage Swap Searches

TC_05_02-Ryanair_MainPage_Travel_Info_PopUp
  MainPage Travel PopUp

TC_05_03-Ryanair_MainPage_Hover_On_Offering_Cards
  MainPage Offering Cards

Post-Conditions
  Post Condition Close Browser
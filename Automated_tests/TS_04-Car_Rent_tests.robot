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

TC_04_01-Ryanair_MainPage_Switch_To_Car_Rent
  Switch To Car Rent

TC_04_02-Ryanair_Car_Rent_Submit_Empty_Destination
  Car Rent Submit Empty Destination  Zadejte prosím místo vyzvednutí

TC_04_03-Ryanair_Car_Rent_Submit_With_Bad_Return_Time
  Car Rent Submit Bad Time  Mezi vyzvednutím a navrácením musí být alespoň 1 hodina rozdíl

TC_04_04-Ryanair_Car_Rent_Check_Different_Return_Place
  Car Rent Different Return Place

TC_04_05-Ryanair_Car_Rent_Uncheck_Drivers_Age
  Car Rent Drivers Age

Post-Conditions
  Post Condition Close Browser
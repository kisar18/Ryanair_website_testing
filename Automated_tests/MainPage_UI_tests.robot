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

TC01-Ryanair_MainPage_Check_If_Flight_Search_Is_Present
  Check If Search Flight Is Present  Zpáteční let

TC02-Ryanair_MainPage_Flight_Search_Empty_Airports
  Search Flight With Empty Airports  Vyberte z

TC03-Ryanair_MainPage_Flight_Search_Empty_Destination_Airport
  Search Flight With Empty Destination Airport  Vyberte destinaci

TC04-Ryanair_MainPage_Flight_Search_Empty_Travel_Dates
  Search Flight With Empty Travel Dates  Vyberte termín cesty

Post-Conditions
  Post Condition Close Browser
*** Comments ***
TC02-Ryanair_MainPage_Flight_Search_Promo_Code
TC06-Ryanair_MainPage_Flight_Search_Empty_Return_Date
TC07-Ryanair_MainPage_Flight_Search_Flight_With_Valid_Attributes
TC08-Ryanair_MainPage_Flight_Search_One_Way_Flight_No_Return_Date_Present


TCXX-Ryanair_MainPage_Check_Car_Rent
TCXX-Ryanair_MainPage_Check_Hotels



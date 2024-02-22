*** Settings ***
Library  SeleniumLibrary
Resource  ./repositories/buttons_repository.robot
Resource  ./repositories/other_elements_repository.robot

*** Keywords ***

Pre Condition Open Browser And Maximize
  [Arguments]  ${Browser}  ${URL}  ${Element}  ${Speed}
  Set Selenium Speed  ${Speed}
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Set Focus To Element  ${Cookie_Button}
  Click Element  ${Cookie_Button}
  Wait Until Element Is Visible  ${Element}

Post Condition Close Browser
  Sleep  1
  Close Browser

Navigate To Page By Button And Check Title
  [Arguments]  ${Menu_Button}  ${Result_Title}
  Element Should Be Visible  ${Menu_Button}
  Set Focus To Element  ${Menu_Button}
  Click Element  ${Menu_Button}
  Title Should Be  ${Result_Title}

Put Text Into Field
  [Arguments]  ${Field_Name}  ${Value}
  Click Element  ${Field_Name}
  Input Text  ${Field_Name}  ${Value}

Submit Form
  [Arguments]  ${Submit_Button}
  Set Focus To Element  ${Submit_Button}
  Click Element  ${Submit_Button}

Check Hover Effect
  [Arguments]  ${Element}  ${NewColor}
  Mouse Over  ${Element}
  Element Attribute Value Should Be  ${Element}  color  ${NewColor}

# Register keywords (without any verification code)
Register With Empty Fields
  [Arguments]  ${Expected_Warning}
  Sleep  1
  Select Frame  xpath=//iframe[@data-ref='kyc-iframe']
  Wait Until Element Is Visible  ${Register_Email_Field}
  Wait Until Element Is Visible  ${Register_Password_Field}
  Submit Form  ${Register_Button}
  Wait Until Page Contains  ${Expected_Warning}

Register With Email Result Text
  [Arguments]  ${Email_Value}  ${Expected_Text}
  Wait Until Element Is Visible  ${Register_Email_Field}
  Wait Until Element Is Visible  ${Register_Password_Field}
  Put Text Into Field  ${Register_Email_Field}  ${Email_Value}
  Submit Form  ${Register_Button}
  Wait Until Page Contains  ${Expected_Text}

Register With Incorrect Value In Field Result Label Color
  [Arguments]  ${Register_Field}  ${Register_Field_Value}  ${Warining_Color}
  Element Should Be Visible  ${Register_Email_Field}
  Element Should Be Visible  ${Register_Password_Field}
  Put Text Into Field  ${Register_Field}  ${Register_Field_Value}
  Submit Form  ${Register_Button}
  Sleep  1
  Element Attribute Value Should Be  ${Register_Field}  border-color  ${Warining_Color}

Register With Email Password
  [Arguments]  ${Email_Value}  ${Password_Value}  ${Expected_Text}
  Element Should Be Visible  ${Register_Email_Field}
  Element Should Be Visible  ${Register_Password_Field}
  Put Text Into Field  ${Register_Email_Field}  ${Email_Value}
  Put Text Into Field  ${Register_Password_Field}  ${Password_Value}
  Submit Form  ${Register_Button}
  Wait Until Page Contains  ${Expected_Text}

# Login keywords (without any verification code)
Login With Empty Fields
  [Arguments]  ${Expected_Warning}
  Element Should Be Visible  ${Login_Email_Field}
  Element Should Be Visible  ${Login_Password_Field}
  Submit Form  ${Login_Button}
  Wait Until Page Contains  ${Expected_Warning}

Login With Email
  [Arguments]  ${Email_Value}  ${Expected_Text}
  Element Should Be Visible  ${Login_Email_Field}
  Element Should Be Visible  ${Login_Password_Field}
  Put Text Into Field  ${Login_Email_Field}  ${Email_Value}
  Submit Form  ${Login_Button}
  Wait Until Page Contains  ${Expected_Text}

Login With Email Password
  [Arguments]  ${Email_Value}  ${Password_Value}  ${Expected_Text}
  Element Should Be Visible  ${Login_Email_Field}
  Element Should Be Visible  ${Login_Password_Field}
  Put Text Into Field  ${Login_Email_Field}  ${Email_Value}
  Put Text Into Field  ${Login_Password_Field}  ${Password_Value}
  Submit Form  ${Login_Button}
  Wait Until Page Contains  ${Expected_Text}

# MainPage UI elements testing
Check If Search Flight Is Present
  [Arguments]  ${Expected_Text}
  Element Should Be Visible  ${MainPage_Departure_Airport_Field}
  Wait Until Page Contains  ${Expected_Text}

Choose Ostrava As Departure Airport
  Wait Until Element Is Visible  ${MainPage_Search_Flight_Button}
  Element Should Be Visible  ${MainPage_Departure_Airport_Field}
  Element Should Be Visible  ${MainPage_Destination_Airport_Field}
  Click Element  ${MainPage_Departure_Airport_Field}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_Czech_Airports_Button}
  Click Element  ${MainPage_Search_Flight_Czech_Airports_Button}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_Ostrava_Airport_Button}
  Click Element  ${MainPage_Search_Flight_Ostrava_Airport_Button}

Choose Malaga As Destination Airport
  Wait Until Element Is Visible  ${MainPage_Search_Flight_Button}
  Element Should Be Visible  ${MainPage_Departure_Airport_Field}
  Element Should Be Visible  ${MainPage_Destination_Airport_Field}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_Spanish_Airports_Button}
  Click Element  ${MainPage_Search_Flight_Spanish_Airports_Button}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_Malaga_Airport_Button}
  Click Element  ${MainPage_Search_Flight_Malaga_Airport_Button}

Search Flight With Empty Airports
  [Arguments]  ${Expected_Text}
  Element Should Be Visible  ${MainPage_Departure_Airport_Container}
  Element Should Be Visible  ${MainPage_Departure_Airport_Field}
  Element Should Be Visible  ${MainPage_Search_Flight_Button}
  Click Element  ${MainPage_Departure_Airport_Field}
  Wait Until Element Is Visible  ${MainPage_Clear_Airports_Button}
  Click Element  ${MainPage_Clear_Airports_Button}
  Sleep  1
  Submit Form  ${MainPage_Search_Flight_Button}
  Element Attribute Value Should Be  ${MainPage_Departure_Airport_Field}  placeholder  ${Expected_Text}
  Element Attribute Value Should Be  ${MainPage_Departure_Airport_Container}  class    ${MainPage_Search_Flight_Error_Css_Class_For_Departure}

Search Flight With Empty Destination Airport
  [Arguments]  ${Expected_Text}
  Choose Ostrava As Departure Airport
  Submit Form  ${MainPage_Search_Flight_Button}
  Element Attribute Value Should Be  ${MainPage_Destination_Airport_Field}  placeholder  ${Expected_Text}
  Element Attribute Value Should Be  ${MainPage_Destination_Airport_Container}  class    ${MainPage_Search_Flight_Error_Css_Class_For_Destination}

Search Flight With Empty Travel Dates
  [Arguments]  ${Expected_Text}
  Element Should Be Visible  ${MainPage_Destination_Airport_Field}
  Click Element  ${MainPage_Destination_Airport_Field}
  Choose Malaga As Destination Airport
  Submit Form  ${MainPage_Search_Flight_Button}
  Wait Until Page Contains  ${Expected_Text}
  Element Attribute Value Should Be  ${MainPage_Start_Date_Field}  class    ${MainPage_Search_Flight_Error_Css_Class_For_Start_Date}

Search Flight With Empty Return Date
  [Arguments]  ${Expected_Text}
  Element Should Be Visible  ${MainPage_Search_Flight_Button}
  Element Should Be Visible  ${MainPage_Start_Date_Field}
  Click Element  ${MainPage_Start_Date_Field}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_June_Calendar_Button}
  Click Element  ${MainPage_Search_Flight_June_Calendar_Button}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_June_3_Calendar_Button}
  Click Element  ${MainPage_Search_Flight_June_3_Calendar_Button}
  Submit Form  ${MainPage_Search_Flight_Button}
  Wait Until Page Contains  ${Expected_Text}

Search Flight With Valid Attributes
  [Arguments]  ${Expected_Text}
  Element Should Be Visible  ${MainPage_Search_Flight_Button}
  Element Should Be Visible  ${MainPage_Return_Date_Field}
  Click Element  ${MainPage_Return_Date_Field}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_June_6_Calendar_Button}
  Click Element  ${MainPage_Search_Flight_June_6_Calendar_Button}
  Submit Form  ${MainPage_Search_Flight_Button}
  Sleep  1
  Wait Until Page Contains  ${Expected_Text}

Search Flight Check One Way Flight Form
  Choose Ostrava As Departure Airport
  Choose Malaga As Destination Airport
  Sleep  1
  Click Element  ${MainPage_Search_Flight_One_Way_Flight_RadioButton}
  Wait Until Element Is Not Visible  ${MainPage_Return_Date_Field}

Search Flight With Promo Code
  Element Should Be Visible  ${MainPage_Search_Flight_Button}
  Element Should Be Visible  ${MainPage_Search_Flight_Promo_Code_RadioButton}
  Element Should Be Visible  ${MainPage_Start_Date_Field}
  Click Element  ${MainPage_Start_Date_Field}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_June_Calendar_Button}
  Click Element  ${MainPage_Search_Flight_June_Calendar_Button}
  Wait Until Element Is Visible  ${MainPage_Search_Flight_June_3_Calendar_Button}
  Click Element  ${MainPage_Search_Flight_June_3_Calendar_Button}
  Sleep  1
  Click Element  ${MainPage_Search_Flight_Promo_Code_RadioButton}
  Wait Until Element Is Visible  ${MainPage_Promo_Code_Field}
  Put Text Into Field  ${MainPage_Promo_Code_Field}  BestPromoCode
  Submit Form  ${MainPage_Search_Flight_Button}
  Wait Until Element Is Visible  ${MainPage_Promo_Code_Error_Element}

Switch To Car Rent
  Wait Until Element Is Visible  ${MainPage_Planning_Menu_DropDown_Button}
  Click Element  ${MainPage_Planning_Menu_DropDown_Button}
  Wait Until Element Is Visible  ${MainPage_Planning_Menu_Car_Rent_Button}
  Click Element  ${MainPage_Planning_Menu_Car_Rent_Button}
  Element Should Be Visible  ${MainPage_Car_Rent_Pick_Up_Field}
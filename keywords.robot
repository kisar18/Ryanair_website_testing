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
*** Variables ***

${Hover_Element}  //*[@id="table_4"]/table[1]/tbody/tr[2]/td[3]/a


# Register fields
${Register_Email_Field}  //form[@class="form ng-pristine ng-invalid ng-touched"]/ry-auth-email/ry-input-d/div/input

${Register_Password_Field}  //form[@class="form ng-pristine ng-invalid ng-touched"]/ry-auth-password/ry-input-d/div/input


# Login fields
${Login_Email_Field}  //*[@id="ry-modal-portal"]/div/ry-auth-popup-container/div[2]/ry-auth-popup/div/ry-login/form/ry-auth-email/ry-input-d/div/input

${Login_Password_Field}  //*[@id="ry-modal-portal"]/div/ry-auth-popup-container/div[2]/ry-auth-popup/div/ry-login/form/ry-auth-password/ry-input-d/div/input


# MainPage search fields
${MainPage_Departure_Airport_Field}  //*[@id="input-button__departure"]

${MainPage_Departure_Airport_Container}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/div/fsw-flight-search-widget-controls-container/fsw-flight-search-widget-content-container/fsw-flight-search-widget-content/div[1]/div/fsw-input-button

${MainPage_Search_Flight_Error_Css_Class_For_Departure}  flight-widget-content__control flight-widget-content__control--airport ng-tns-c2916670490-4 input-button--connected-right input-button--error

${MainPage_Destination_Airport_Field}  //*[@id="input-button__destination"]

${MainPage_Destination_Airport_Container}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/div/fsw-flight-search-widget-controls-container/fsw-flight-search-widget-content-container/fsw-flight-search-widget-content/div[1]/div/div/fsw-input-button

${MainPage_Search_Flight_Error_Css_Class_For_Destination}  flight-widget-content__control flight-widget-content__control--destination-airport ng-tns-c2916670490-4 input-button--connected-left input-button--content-shifted input-button--error

${MainPage_Start_Date_Field}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/div/fsw-flight-search-widget-controls-container/fsw-flight-search-widget-content-container/fsw-flight-search-widget-content/div[1]/div[2]/div/fsw-input-button[1]

${MainPage_Search_Flight_Error_Css_Class_For_Start_Date}  flight-widget-content__control flight-widget-content__control--date ng-tns-c2916670490-4 ng-trigger ng-trigger-datesFromTripTypeChange input-button--connected-right input-button--error

${MainPage_Return_Date_Field}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/div/fsw-flight-search-widget-controls-container/fsw-flight-search-widget-content-container/fsw-flight-search-widget-content/div[1]/div[2]/div/fsw-input-button[2]

${MainPage_Promo_Code_Field}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/fsw-trip-type-container/fsw-trip-type/fsw-promo-code-container/fsw-promo-code/ry-input-d/div/input

${MainPage_Promo_Code_Error_Element}  /html/body/app-root/flights-root/div/div/div/div/flights-lazy-content/banners-container/promo-code-message/promo-code-error-message

# Car rent elements
${MainPage_Car_Rent_Pick_Up_Field}  //*[@id="searchbox-toolbox-fts-pickup"]

${Car_Rent_Pick_Up_Field}  //*[@id="searchbox-toolbox-fts-pickup"]

${Car_Rent_Start_Date_Field}  //*[@id="searchbox-toolbox-date-picker-pickup-date"]

${Car_Rent_Return_Date_Field}  //*[@id="searchbox-toolbox-date-picker-dropoff-date"]

${Car_Rent_Start_Time_Field}  //*[@id="searchbox-toolbox-pickup-time"]

${Car_Rent_Return_Time_Field}  //*[@id="searchbox-toolbox-dropoff-time"]

${Car_Rent_Return_Place_Field_Trigger}  //*[@id="main"]/div[1]/div/div/div[2]/div/div/div[1]/div[3]/div[1]/div/div/label

${Car_Rent_Drivers_Age_Checkbox}  //*[@id="main"]/div[1]/div/div/div[2]/div/div/div[1]/div[3]/div[2]/div/div/div/div/label

${Car_Rent_Drivers_Age_Input_Field}  //*[@id="drivers-age-input-text"]

${Car_Rent_Start_Date_Calendar_Field}  //*[@id="main"]/div[1]/div/div/div[2]/div/div/div[1]/div[2]/div/div[2]/div/div[1]/span/div/div[1]/div/div/div/div[1]/table/tbody/tr[3]/td[1]

${Car_Rent_Return_Place_Field}  //*[@id="main"]/div[1]/div/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div[2]

# Main page UI elements
${MainPage_Destination_PopUp}  //*[@id="ry-tooltip-2"]/div[2]/div/div[2]/span

${MainPage_Car_Rent_Card}  (//img[@alt=" PRONÁJEM VOZU"])[1]

${MainPage_Gift_Card}  (//img[@alt="DÁRKOVÉ POUKÁZKY"])[1]

${MainPage_Food_Menu_Card}  (//img[@alt="PALUBNÍ ČASOPIS"])[1]

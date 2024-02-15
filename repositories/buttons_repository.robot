*** Variables ***

${Cookie_Button}  //*[@id="cookie-popup-with-overlay"]/div/div[3]/button[2]


# Buttons related to registration
${Register_Menu_Button}  //div[@class="header__center"]/hp-header-content-container/hp-header-content/hp-header-sections-group[2]/hp-header-menu-item[3]/button

${Register_Button}  //form[@class="form ng-pristine ng-invalid ng-touched"]/ry-auth-submit/button


# Buttons related to login
${Login_Menu_Button}  //div[@class="header__center"]/hp-header-content-container/hp-header-content/hp-header-sections-group[2]/hp-header-menu-item[4]/button

${Login_Button}  //*[@id="ry-modal-portal"]/div/ry-auth-popup-container/div[2]/ry-auth-popup/div/ry-login/form/ry-auth-submit/button


# Buttons related to main page searches
${MainPage_Clear_Airports_Button}  //*[@id="ry-tooltip-1"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-origin-container/fsw-airports/div/fsw-airports-list/div[1]/button

${MainPage_Search_Flight_Button}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/div/fsw-flight-search-widget-controls-container/fsw-flight-search-widget-content-container/fsw-flight-search-widget-content/div[2]/div/button

${MainPage_Search_Flight_Czech_Airports_Button}  //*[@id="ry-tooltip-1"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-origin-container/fsw-airports/fsw-countries/div[2]/div[8]/span

${MainPage_Search_Flight_Ostrava_Airport_Button}  //*[@id="ry-tooltip-1"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-origin-container/fsw-airports/div/fsw-airports-list/div[2]/div[1]/fsw-airport-item[2]

${MainPage_Search_Flight_Spanish_Airports_Button}  //*[@id="ry-tooltip-3"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-destination-container/fsw-airports/fsw-countries/div[5]/div[3]/span

${MainPage_Search_Flight_Malaga_Airport_Button}  //*[@id="ry-tooltip-3"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-destination-container/fsw-airports/div/fsw-airports-list/div[2]/div[1]/fsw-airport-item

${MainPage_Search_Flight_June_Calendar_Button}  //*[@id="ry-tooltip-10"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-flexible-datepicker-container/fsw-datepicker/ry-datepicker-desktop/month-toggle/div/div[2]/div/div[5]/div[2]

${MainPage_Search_Flight_June_3_Calendar_Button}  //*[@id="ry-tooltip-10"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-flexible-datepicker-container/fsw-datepicker/ry-datepicker-desktop/div/calendar[1]/calendar-body/div[3]/div[1]/div

${MainPage_Search_Flight_June_6_Calendar_Button}  //*[@id="ry-tooltip-11"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-flexible-datepicker-container/fsw-datepicker/ry-datepicker-desktop/div/calendar[1]/calendar-body/div[3]/div[10]/div

${MainPage_Search_Flight_One_Way_Flight_RadioButton}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/fsw-trip-type-container/fsw-trip-type/ry-radio-button[2]

${MainPage_Search_Flight_Two_Way_Flight_RadioButton}  //*[@id="main-content"]/fsw-flight-search-widget-container/fsw-flight-search-widget/fsw-trip-type-container/fsw-trip-type/ry-radio-button[1]
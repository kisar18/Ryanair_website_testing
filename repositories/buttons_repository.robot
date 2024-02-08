*** Variables ***

${Cookie_Button}  //*[@id="cookie-popup-with-overlay"]/div/div[3]/button[2]

# Buttons related to registration
${Register_Menu_Button}  //div[@class="header__center"]/hp-header-content-container/hp-header-content/hp-header-sections-group[2]/hp-header-menu-item[3]/button
${Register_Button}  //form[@class="form ng-pristine ng-invalid ng-touched"]/ry-auth-submit/button

# Buttons related to login
${Login_Menu_Button}  //div[@class="header__center"]/hp-header-content-container/hp-header-content/hp-header-sections-group[2]/hp-header-menu-item[4]/button
${Login_Button}  //*[@id="ry-modal-portal"]/div/ry-auth-popup-container/div[2]/ry-auth-popup/div/ry-login/form/ry-auth-submit/button
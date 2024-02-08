*** Variables ***

${Hover_Element}  //*[@id="table_4"]/table[1]/tbody/tr[2]/td[3]/a

# Register fields
${Register_Email_Field}  //form[@class="form ng-pristine ng-invalid ng-touched"]/ry-auth-email/ry-input-d/div/input
${Register_Password_Field}  //form[@class="form ng-pristine ng-invalid ng-touched"]/ry-auth-password/ry-input-d/div/input

# Login fields
${Login_Email_Field}  //*[@id="ry-modal-portal"]/div/ry-auth-popup-container/div[2]/ry-auth-popup/div/ry-login/form/ry-auth-email/ry-input-d/div/input
${Login_Password_Field}  //*[@id="ry-modal-portal"]/div/ry-auth-popup-container/div[2]/ry-auth-popup/div/ry-login/form/ry-auth-password/ry-input-d/div/input

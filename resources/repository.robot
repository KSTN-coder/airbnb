*** Settings ***
Resource          ../resources/variables.robot
*** Variables ***
# Element locators for the Airbnb search page
${SEARCH_INPUT}           xpath=//input[@id='bigsearch-query-location-input'] 
${SEARCH_BUTTON}          xpath=//button[@data-testid='structured-search-input-search-button']
${SEARCH_WHO}             xpath=//div[text()='Who']/following-sibling::div
${SEARCH_ICON}            xpath=//*[@id="categoryScroller"]
${RESERVE_BUTTON}         xpath=(//span[contains(@class,'tmel3e0 atm_9s_1ulexfb')])[2]
${CLICK_SEARCH_WHO}         xpath=//button[@data-testid='little-search-guests']//div[1]
${ADULTS_INCREASE}        xpath=//button[@data-testid='stepper-adults-increase-button']
${CHILDS_INCREASE}        xpath=//button[@data-testid='stepper-children-increase-button']
${INFANTS_INCREASE}       xpath=//button[@data-testid='stepper-infants-increase-button']
${PETS_INCREASE}          xpath=//button[@data-testid='stepper-pets-increase-button']
${RESERVE_WHO}           xpath=(//div[contains(@class,'s1q42845 atm_h3_1yuitx')])[2]
${CLOSE_SEARCH}           xpath=//div[contains(@class,'cmz1qwp atm_e2_u29brm')]/following-sibling::div[1]
${NEXT_MONTH}             xpath=//div[@class='_qz9x4fc']//button[1]
${CHECK_IN}               xpath=//div[text()='Check in']/following-sibling::div
${CHECK_OUT}              xpath=//div[text()='Check out']/following-sibling::div
${CHECK_IN_DATE}          xpath=(//div[text()='13'])[3]
${CHECK_OUT_DATE}         xpath=(//div[text()='17'])[3]
${CLOSE_POPUP}            xpath=//button[@aria-label='Close']
${CONTENT_ONE}            xpath=//*[@id="site-content"]/div/div[2]/div/div/div/div/div/div[1]/div/div[2]/div/div/div/div
${SEARCH_DATE}            xpath=(//div[contains(@class,'f16sug5q atm_c8_1cw7z3g')])[2]
${RESERVE_DATE}           xpath=(//div[contains(@class,'t17zprea atm_ll_p5ox87')]//div)[2]

${LOADING_ICON}           xpath=//div[contains(@class, 'loading-spinner')] 

${RESULTS_CONTAINER}      xpath=//div[@data-testid='section-results']
${SEARCH_LOCATION}        xpath=//span[@aria-hidden='true' and @data-testid='stays-page-heading' and contains(text(), '${LOCATION}')]
${SEARCH_RESULTS}         xpath=//span[@data-testid='stays-page-heading']

${LOGIN_BUTTON}             xpath=//button[@data-testid='cypress-headernav-profile']
${LOGIN_ERROR_MESSAGE}       xpath=//div[contains(@class,'m1us9lga dir')]

${PHONE_NUMBER_INPUT}       xpath=//div[text()='Phone number']/following::input[1]
${HEADER_LOGIN}       xpath=//div[@data-testid='login-pane']
${FORM_LOGIN}       xpath=//div[@role='dialog']//header[1]
${LABEL_LOGIN}       xpath=//div[text()='Log in']
${CONTINUE_BUTTON}    xpath=//span[contains(@class,'t1dqvypu atm_9s_1ulexfb')]
${ERROR_PHONE_NUMBER}     xpath=//div[@class='_4l12l8']//div[1]
# (//div[text()='Airbnb your home'])[2]
# //a[@href='/help']//div[1]
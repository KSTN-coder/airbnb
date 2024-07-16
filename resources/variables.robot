*** Settings ***
Resource          ../resources/variables.robot
*** Variables ***
# URL of the Airbnb Homepage
${HOME_PAGE_URL}         https://www.airbnb.com/


# Expected Result

${expected_result}    Over 1,000 places in New York

# Error message

${ERROR_MESSAGE_LOGIN}    We can't send a code to this phone number. Try using a different one.
${ERROR_MESSAGE_LOGIN_LOCK}    You’ve reached the max confirmation attempts. Try again in 1 hour.
${REQUIRED_PHONE_NUMBER}    Phone number is required.

# Data for testing

${LOCATION}        New York
${LOCATION_NEWYORK}      New York
${LOCATION_BANGKOK}      Bangkok
${LOCATION_PHIPHI}       phi phi
${INVALID_LOGIN}        213213213213


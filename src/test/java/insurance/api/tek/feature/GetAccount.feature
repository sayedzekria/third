@Regression
Feature: TEK Insurance GET Account API

 Background:
    Given url appUrl

   * def tokenGenerator = call read('GenerateToken.feature@GenerateToken')
   * def tokenValue = tokenGenerator.response.token
  * header Authorization = 'Bearer ' + tokenValue
  Scenario:  Get primary Person Account
  * path '/api/accounts/get-primary-account'
  * param primaryPersonId = 2591
  * method get
  * status 200
  * print response
  * match response.firstName == 'zekria'
  * match response.lastName == 'sayedi'
  * match response.gender == 'MALE'
  * match response.id == 2591
  * match response.employmentStatus == 'student'
  * match response.email == 'sayedzekria12@tekschool.us'
  * match response.maritalStatus == 'MARRIED'
 Scenario: Get All Account
 * path '/api/accounts/get-all-accounts'
 * method get
 * status 200
 * print response[0]
# * match response[0].firstName ==  'Mazidullah'
 Scenario: Get Account Details
 * path '/api/accounts/get-account'
  * param primaryPersonId = 2591
 * method get
 * status 200
 * print response
 * def idValue = response.primaryPerson.id
 * match idValue == 2591
 * match response.primaryPersonCars[0].licensePlate == 'abt67887'

















#    * def tokenGenerator = call read('generateToken.feature@GenerateToken')
#    * def tokenValue = tokenGenerator.response.token
#   * header Authorization = 'Bearer ' + tokenValue
#
#
# Scenario: Get Primary Person Account
#  * path '/api/accounts/get-primary-account'
#  * param primaryPersonId = 2539
#  * method get
#  * status 200
#  * print response
#  * match response.firstName == 'zekria'
#  * match response.lastName == 'sayedi'
#  * match response.gender == 'MALE'
#  * match response.title == 'Mr'
#  * match response.email == 'student@tekschool.us'
# Scenario: get all the account
# * path '/api/accounts/get-all-accounts'
# * method get
# * status 200
# * print response[0]
# * match response[0].firstName == 'Mujib'
#  Scenario: Get Account Details
#  * path '/api/accounts/get-account'
#    * param primaryPersonId = 2539
#  * method get
#  * status 200
#  * print response
#  * def idValue = response.primaryPerson.id
#  * match idValue == 2539
#    * match response.primaryPersonCars[0].licensePlate == 'TEK0012'
#  * match response.user.accountType == 'CUSTOMER'
#  * match response.user.authorities[0].role == 'CUSTOMER'
#  Scenario: adding phone number
#  * path 'api/accounts/add-account-phone'
#  * param primaryPersonId = 2539
#  * request
#  """
#  {
#  "id": 0,
#  "phoneNumber": "700000000",
#  "phoneExtension": "0012",
#  "phoneTime": "morning",
#  "phoneType": "shome"
#}
#  """
#* method post
#  * status 201
#  * print response






























































































































































































































































































































#    * path '/api/accounts/get-primary-account'
#    * param primaryPersonId = 2498
#    * method get
#    * status 200
#    * print response
#    * match response.firstName == 'Jawid'
#    * match response.lastName == 'Jawid'
#    * match response.gender == 'MALE'
#    * match response.id == 2539
#    * match response.email contains '@gmail.com'
#    Scenario: get All Account
#      * path '/api/accounts/get-all-accounts'
#      * method get
#      * status 200
#      * print response[0]
#      * match response[0].firstName == 'Shokriyan'
#      Scenario: Get Account Details
#        * path '/api/accounts/get-account'
#        * param primaryPersonId = 2539
#        * method get
#        * status 200
#        * print response
#        * def idValue = response.primaryPerson.id
#        * match idValue == 2498
#        # validate LicensePlate TEK0012
#        * match response.primaryPersonCars[0].licensePlate == 'TEK0012'
#        # validate accountType customer
#        * match response.user.accountType == 'CUSTOMER'
#       # validate role customer
#       * match response.user.authorities[0].role == 'CUSTOMER'

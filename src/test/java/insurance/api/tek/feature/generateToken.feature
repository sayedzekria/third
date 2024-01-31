@Regression
Feature: Generate Access token
  Background:
    Given url appUrl
  @GenerateToken
  Scenario: generate token
  * path '/api/token'
  * request {"username":"zekria","password":"Takhar121331@"}
  * method post
  * status 200
  * print response
    * def tokenValue = response.token
   * print tokenValue
Scenario: verify toke
  * path '/api/token/verify'
  * def tokenGenerator = call read('GenerateToken.feature@GenerateToken')
  * def tokenValue = tokenGenerator.response.token
  * def userNameValue = tokenGenerator.response.username
  * param token =  tokenValue
  * param username = userNameValue
  * method get
  * status 200
  * print response



#Feature: Generate Access Token for TEK Insurance Application
#  Background:
#    Given  url 'https://qa.insurance-api.tekschool-students.com/'
#
#  @GenerateToken
#  Scenario: Generate Token
#
#    * path '/api/token'
#    * request   {"username": "zekria","password": "Takhar121331@"}
#    * method post
#    * status 200
#    * print response
#    * def tokenValue = response.token
#    * print tokenValue
#    Scenario: verify token
#      * path '/api/token/verify'
#      * def tokenGenerator = call read('generateToken.feature@GenerateToken')
#      * def tokenValue = tokenGenerator.response.token
#      * def userNameValue = tokenGenerator.response.username
#      * param token = tokenValue
#      * param username = userNameValue
#      * method get
#      * status 200
#      * print response
#
#
#
#
#
#
#
#
#
#
#
#

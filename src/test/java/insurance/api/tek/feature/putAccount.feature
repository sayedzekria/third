Feature: TEK Insurance PUT Account API

  Background:
    Given url appUrl
    * def tokenGenerator = call read('generateToken.feature@GenerateToken')
    * def tokenValue = tokenGenerator.response.token
    * header Authorization = 'Bearer ' + tokenValue


  Scenario: Put API - Update Phone number Primary Person
    * path '/api/accounts/update-account-phone'
    * def primarypersonIdValue = read('file:./target/createdAccount.json')
    * param primaryPersonId = primarypersonIdValue.id
    * def phoneIdExtraction = call read('PostAccount.feature@postPhone')
    * def phoneIdValue = phoneIdExtraction.phoneId
    * print phoneIdValue
    * request
      """
{
  "id": #(phoneIdValue),
  "phoneNumber": "0000126789",
  "phoneExtension": "01",
  "phoneTime": "evening",
  "phoneType": "home"
}
      """
    * method put
    * status 200
    * print response
//package insurance.api.tek.feature;
//
//public class gg {
//    #Feature: TEK Insurance Post Account API
//#
//        #  Background:
//            #    Given url 'https://qa.insurance-api.tekschool-students.com'
//            #    * def tokenGenerator = call read('generateToken.feature@GenerateToken')
//#    * def getTokenValue = tokenGenerator.response.token
//#    * header Authorization = 'Bearer ' + getTokenValue
//#
//        #
//        #  Scenario: Post an Account - Primary Person
//#    * def generator = Java.type('insurance.api.tek.utility.DataGenerator')
//#    * def email = generator.getEmail()
//#    * def firstName = generator.getFirstName()
//#    * def lastName = generator.getLastName()
//#    * def title = generator.getTitle()
//#    * def gender = generator.getGender()
//#    * def employmentStatus = generator.getEmploymentStatus()
//#    * def maritalStatus = generator.getMaritalStatus()
//#    * def dateOfBirth = generator.getDateOfBirth()
//#    * path '/api/accounts/add-primary-account'
//            #    * request
//#      """
//#      {
//#   "id": 0,
//#  "email": "#(email)",
//#  "firstName": "#(firstName)",
//#  "lastName": "#(lastName)",
//#  "title": "#(title)",
//#  "gender": "#(gender)",
//#  "maritalStatus": "#(maritalStatus)",
//#  "employmentStatus": "#(employmentStatus)",
//#  "dateOfBirth": "#(dateOfBirth)",
//#  "new": true
//#      }
//#      """
//        #    * method post
//#    * status 201
//            #    * print response
//#    #this line of the code will store the JSON response into a json file for reusability
//#    * karate.write(response, 'createdAccount.json')
//            #
//            #
//            #  Scenario:  Post Phone - Primary Person
//#    * path '/api/accounts/add-account-phone'
//            #    * def primaryPersonIdValue = read('file:./target/createdAccount.json')
//#    * param primaryPersonId = primaryPersonIdValue.id
//#    * request
//#    """
//#    {
//#  "phoneNumber": "2025058899",
//#  "phoneExtension": "001",
//#  "phoneTime": "Morning",
//#  "phoneType": "Cell Phone"
//#    }
//#    """
//        #    * method post
//#    * status 201
//            #    * print response
//}


@F_Login
Feature: This feature would be used to design the Login page of the application

  Background: Open the Application
    Given I have opend the Application in Browser
    
    @Sanity

  Scenario: Validate the Successful Login
    When I Click on the Login Link
    And I Enter the UserName
    And I Enter the Password
    And I Click on the Login Button
    Then I should be Landed on the Home Page
     
    @Regression @U_1234
  Scenario: Validate the Successful Login
    When I Click on the Login Link
    And I Enter the UserName "abc@xyz.com"
    And I Enter the Password "pqr@1234"
    And I Click on the Login Button
    Then I should be Landed on the Home Page
 @Regression @Rapid
  Scenario Outline: Validate the Successful Login
    When I Click on the Login Link
    And I Enter the UserName "<UserName>"
    And I Enter the Password "<Password>"
    And I Click on the Login Button
    Then I should be Landed on the Home Page

    Examples: 
      | UserName     | Password |
      | abc@xyz.com  | pqr@1234 |
      | sham@abc.com | pqr@1234 |

  Scenario: Validate the Negative Login using test data
    When I Click on the Login Link
    And I Enter the UserName "abc@xyz.com"
    And I Enter the Password "pqr@1234"
    And I Click on the Login Button
    Then I should get the error Message as " The email or password you have entered is invalid."

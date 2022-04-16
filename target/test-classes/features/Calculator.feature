Feature: This Feature would be creating a calculator fpr add and Subtract

  Scenario: To add two numbers
    Given I have a Calculator
    When I add 5 and 4
    Then I should get the Result as 9

  Scenario: To Sub two numbers
    Given I have a Calculator
    When I Sub 6 and 3
    Then I should get the Result as 3

  Scenario Outline: To add two numbers using scenario outline
    Given I have a Calculator
    When I add <num1> and <num2>
    Then I should get the Result as <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    7 |     11 |
      |    3 |    5 |      8 |

  Scenario: Add multiple numbers using cucumber data table
    Given I have a Calculator
    When I add below numbers
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
      | 4 |
    Then I should get result as 24

  Scenario: Add multiple numbers using cucumber data table
    Given I have a Calculator
    When I add below numbers using List
      |  4 |
      |  4 |
      |  4 |
      |  4 |
      |  4 |
      |  4 |
      | 10 |
    Then I should get result as 34

  Scenario: To calculate the Total bill of the order
    Given I have a Calculator
    When I order below items
      | Coffee | 30 |
      | Tea    | 20 |
      | burger | 50 |
    Then I should get result as 100
    
    Scenario: To calculate the Total bill of the order
    Given I have a Calculator
    When I order below items and Quantity
      | Coffee | 1 | 10 |
      | Tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get result as 140

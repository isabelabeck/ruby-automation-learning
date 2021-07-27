Feature: Test Automation of some numeric operations.

Scenario Outline: Testing numeric operations of a calculator
    Given I want to "<type_of_operation>" two numbers <first_number> and <second_number>
    When I make this operation 
    Then the result should be <expected_result>
    Examples:
        | type_of_operation | first_number | second_number | expected_result |
        | add               | 2            | 3             | 5               |
        | subtract          | 5            | 4             | 1               |
        | multiplicate      | 5            | 10            | 50              |
        | divide            | 50           | 2             | 25              |

Scenario Outline: Testing root operations of a calculator
    Given I want to calculate the <root_number> root of a number <number> 
    When I make this operation 
    Then the result should be <expected_result>
    Examples:    
        | root_number | number | expected_result |
        | 2           | 16     |  4              |
        | 3           | 8      |  2              |
        | 4           | 81     |  3              |

Scenario Outline: Testing exponencial operations of a calculator
    Given I want to calculate the <exponencial_number> power of a number <number>
    When I make this operation
    Then the result should be <expected_result>
    Examples:
        | exponencial_number | number | expected_result |
        | 5                  | 2      |  32             |
        | 2                  | 8      |  64             |
        | 4                  | 3      |  81             |

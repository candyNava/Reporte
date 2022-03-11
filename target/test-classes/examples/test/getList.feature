Feature: list demo
  Scenario:Get API example
    
    Given  url  'https://reqres.in/api/users?page=2'

    #Action
    When method GET

    #Expected
    Then status 200
    And print response
    
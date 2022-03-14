Feature:assertion  GET
   #Comun parameters
  Background:
    * url 'https://reqres.in/api'
    #* header Accept = 'application/json'
Scenario: Get demo 4
  Given path '/users'
  And param page = 2
  When method GET
  Then status 200
  And match response.data[0].first_name !=null
  And assert response.data.length == 6
  And match $.data[1].id == 8
  And match $.data[3].last_name =='Fields'
Feature: Crear usuario básico en reqres.in

  Background:
    * url 'https://reqres.in/api'
    * header x-api-key = 'reqres-free-v1'

  Scenario: Crear un usuario
    Given path 'users'
    And request { name: 'Janet', job: 'Princess' }
    When method POST
    Then status 201
    And match response.name == 'Janet'
    And match response.job == 'Princess'
    And match response.id == '#notnull'

  Scenario: Crear un usuario con nombre, apellido, email y avatar
    Given path 'users'
    And request
    """
    {
      "email": "janet.t@reqres.in",
      "first_name": "Janet",
      "last_name": "Torrez",
      "avatar": "https://reqres.in/img/faces/2-image.jpg"
    }
    """
    When method POST
    Then status 201
    And match response.email == 'janet.t@reqres.in'
    And match response.first_name == 'Janet'
    And match response.last_name == 'Torrez'
    And match response.avatar contains '/img/faces/2-image.jpg'
    And match response.id == '#notnull'
    
Feature: Actualizar un usuario existente por ID

  Background:
    * url 'https://reqres.in/api'
    * header x-api-key = 'reqres-free-v1'
    * configure headers = { 'Content-Type': 'application/json' }

  Scenario: Actualizar nombre y trabajo de usuario con ID 2 usando PUT
    Given path 'users', 2
    And request { name: 'Luigi', job: 'Plumber' }
    When method PUT
    Then status 200
    And match response.name == 'Luigi'
    And match response.job == 'Plumber'
    # Validar que el campo updatedAt contenga el año
    And match response.updatedAt contains '20'


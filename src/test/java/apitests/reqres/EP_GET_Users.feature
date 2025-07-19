Feature: Obtener lista de usuarios

  Background:
    * url 'https://reqres.in/api'
    * header x-api-key = 'reqres-free-v1'

  Scenario: Obtener todos los recursos disponibles
    Given url 'https://reqres.in/api/unknown'
    When method GET
    Then status 200

  Scenario: Obtener usuarios de la primera página con x-api-key
    Given path 'users'
    And param page = 1
    When method GET
    Then status 200
    And match response.page == 1

  Scenario: Obtener usuario existente
    Given path 'users', 2
    When method GET
    Then status 200
    And match response.data.id == 2

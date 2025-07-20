Feature: Actualizar un usuario en custom endpoint con datos válidos

  Background:
    * url 'https://reqres.in/api'
    * header x-api-key = 'reqres-free-v1'
    * configure headers = { 'Content-Type': 'application/json', 'accept': 'application/json' }

  Scenario: Actualizar usuario en custom-endpoints con ID 1
    Given path 'custom-endpoints', 1
    And request { name: 'morpheus', job: 'zion resident' }
    When method PUT
    Then status 200
    And match response.name == 'morpheus'
    And match response.job == 'zion resident'
    And match response.updatedAt contains '2025'
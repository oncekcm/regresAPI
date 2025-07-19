Feature: Eliminar un usuario existente

  Background:
    * url 'https://reqres.in/api'
    * header x-api-key = 'reqres-free-v1'

  Scenario: Eliminar usuario con ID 2
    Given path 'users', 2
    When method DELETE
    Then status 204
    And assert responseTime < 3000
    

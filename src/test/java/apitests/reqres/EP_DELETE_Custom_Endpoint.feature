Feature: Eliminar un recurso custom endpoint existente

  Background:
    * url 'https://reqres.in/api'
    * header x-api-key = 'reqres-free-v1'

  Scenario: Eliminar recurso custom-endpoints con ID 2
    Given path 'custom-endpoints', 2
    When method DELETE
    Then status 204
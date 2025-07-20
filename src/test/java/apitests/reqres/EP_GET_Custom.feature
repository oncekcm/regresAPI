Feature: Verificar acceso no autorizado a custom endpoint

  Background:
    * url 'https://reqres.in/api'

  Scenario: Acceso a /custom/endpoint sin autorización devuelve 401 (Autor: Danitza Maygua)
    Given path 'custom', 'endpoint'
    When method GET
    Then status 401
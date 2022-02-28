Feature: Sample API Tests

  Background:
    * url 'https://api.themoviedb.org/3'
    * header Accept = 'application/json'

  Scenario: Authentication
    Given url 'https://api.themoviedb.org/3/authentication/token/new?api_key=ff94f41b90c53f66a7708018f476010b'
    When method GET
    Then status 200
    And print response

  Scenario: Request token
    Given url 'https://api.themoviedb.org/3/authentication/token/validate_with_login'
    And param api_key = 'ff94f41b90c53f66a7708018f476010b'
    And request {"username": "dicruz","password": "Testingintern2022","request_token": "1ceba925bc92ab2cf06685c9139092c3dd4161a9"}
    When method POST
    Then status 200

  Scenario: Create Session
    Given url 'https://api.themoviedb.org/3/authentication/session/new'
    And param api_key = 'ff94f41b90c53f66a7708018f476010b'
    And request {"request_token": "1ceba925bc92ab2cf06685c9139092c3dd4161a9"}
    When method POST
    Then status 200
    And print response

  Scenario: Create list
    Given url 'https://api.themoviedb.org/3/list'
    And param api_key = 'ff94f41b90c53f66a7708018f476010b'
    And param session_id = '7fe52ac9141c56332641dabf001c47261d911873'
    And request {"name": "Mi nueva lista.","description": "Just for fun.","language": "en"}
    When method POST
    Then status 201

  Scenario: Add 'Encanto' movie to the list
    Given url 'https://api.themoviedb.org/3/list/8193398/add_item'
    And param api_key = 'ff94f41b90c53f66a7708018f476010b'
    And param session_id = '7fe52ac9141c56332641dabf001c47261d911873'
    And request {"media_id": 568124}
    When method POST
    Then status 201
    And print response


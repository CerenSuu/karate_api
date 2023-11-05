Feature: JPH01 Kullanici Get request sonucu donen responsu test eder
  
  Scenario: TC01 Get request'e donen response'in beklenen ozelliklerde olması gerekir
    Given url 'https://httpbin.org/json'
    When method GET
    Then status 200
    And match header Content-Type == 'application/json'
    And match response == {slideshow: '#notnull'}

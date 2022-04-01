Feature: Text box

  Scenario: Create Account
    Given I have Written my email "Alessio.steam@hotmail.com"
    Given I have Written my username "Alessiogiambalvo123"
    Given I have Written my password "Alessio?"
    When I click the signup button
    Then Another page is displayed,with a textmessage

  Scenario: Creating an existing account
    Given I have Written my email "Alessio.steam@hotmail.com"
    Given I have Written my username "Alessiogiambalvo123"
    Given I have Written my password "Alessio?"
    When I click the signup button
    Then it cannot create an account

  Scenario: Create account with at least 100chars
    Given I have Written my email "Alessio.steam@hotmail.com"
    Given I have Written my username "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaallllllllllllllllllllllleeeeeeeeeeeeeeeeeeeeesssssssssssssssssssssssssssssssssssssiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiioooooooooooooooooooooooooooooooooo"
    Given I have Written my password "Alessio12?"
    When I click the signup button
    Then It cannot Create account, to many chars

  Scenario: Create account without a mail
    Given I have Written my username "Alessio.steam"
    Given I have Written my username "alessio12345"
    Given I have Written my password "Alessio123?"
    When I click the signup button
    Then It cannot create an account, mail missing






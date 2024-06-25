Feature: Login
  As a user I should be able to login to the app
@Smoke
  Scenario: Login with valid credentials
    As a user I should be able to login using valid username and password

    #preduslov za izvršavanje našeg testa
    Given I am on the sauce demo login page

    #sam test
    When I enter username "standard_user"
    And I enter password "secret_sauce"
    And I click on the login button

    #asertacija - provera rezultata testiranja
    Then I should be logged in
    And I should be able to see products

    #menja bilo given, bilo when ili then
    #And

  @Smoke
  Scenario: Login with invalid username
    As a user I should not be able to login using invalid username

    Given I am on the sauce demo login page
    When I enter username "standard_user1"
    And I enter password "secret_sauce"
    And I click on the login button
    Then I should get an error message "Epic sadface: Username and password do not match any user in this service"

  @Smoke
  Scenario: Login with invalid password
  As a user I should not be able to login using invalid password

    Given I am on the sauce demo login page
    When I enter username "standard_user"
    And I enter password "secret_sauce1"
    And I click on the login button
    Then I should get an error message "Epic sadface: Username and password do not match any user in this service"

  @Smoke
  Scenario: Login with invalid credentials
  As a user I should not be able to login using invalid username and invalid password

    Given I am on the sauce demo login page
    When I enter username "standard_user1"
    And I enter password "secret_sauce1"
    And I click on the login button
    Then I should get an error message "Epic sadface: Username and password do not match any user in this service"
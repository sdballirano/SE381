Feature: Logging in

Logging in should be as simple as entering proper username and password and clicking a button.

Scenario: Successful login

User should be able to use their username and password to login.
	
	Given I enter the username "Steven"
	And I enter the password "Ballirano"
	And I click the login button
	Then I should be allowed to the homepage
	And I should be an authenticatd user

Scenario: Incorrect User

What happens when the user fails to login correctly.
	
	Given I enter the username "Joe"
	And I enter the password "Schmoe"
	And I click the login button
	Then I should be see an error
	And I should not be an authenticatd user

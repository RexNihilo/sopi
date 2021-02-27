Feature: forgot password

Scenario:  As a User I would like to reset my password given my email 

Given I am on the homepage
When I follow "Sign in"
When I follow "Forgot password?"
When I fill in "Email" with "aelgazar@citadel.edu"
When I press "Reset password"


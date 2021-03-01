
Feature: sign up

Scenario:  As a User so that I can use the app I want to register a user to signup

Given I am on the homepage
When I follow "Sign in"
Then I should be on the sign in page
When I follow "Sign up"
When I fill in "Email" with "RobertRogers@citadel.edu"
When I fill in "Password" with "thisismypassword123"
When I press "Sign up"

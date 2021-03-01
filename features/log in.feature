
Feature: login 

Scenario:  As a User so that I can use the app I want to Login using a saved user name email RobertRogers@citadel.edu

Given I am on the homepage
When I follow "Sign in"
Then I should be on the sign in page
When I follow "Sign up"
When I fill in "Email" with "RobertRogers@citadel.edu"
When I fill in "Password" with "thisismypassword123"
When I press "Sign up"
When I press "Sign out"
When I fill in "Email" with "RobertRogers@citadel.edu"
When I fill in "Password" with "thisismypassword123"

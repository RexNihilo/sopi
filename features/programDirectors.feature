Feature: Program Director Index View Page
  
Scenario:  Program Director View is working
  
Given I am on the homepage
When I follow "Sign in"
Then I should be on the sign in page
When I follow "Sign up"
When I fill in "Email" with "RobertRogers@citadel.edu"
When I fill in "Password" with "thisismypassword123"
When I press "Sign up"
When I am on the program director page
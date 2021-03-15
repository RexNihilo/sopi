#Elgazar created this is were you put the route for the Email address 
class ApplicationMailbox < ActionMailbox::Base

  routing RepliesMailbox::MATCHER=> :replies #github email used Rubular
 # routing:all => :replies
end

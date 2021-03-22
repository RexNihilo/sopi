#Elgazar Created for 
 #example reply-1@reply.example.com
 # mail => Mail object (grabs the subject line)
    #inbound_email => ActionMailbox::InboundEmail record
class RepliesMailbox < ApplicationMailbox
 MATCHER = /reply-(.+)@reply.example.com/i
 
  before_processing :ensure_user
  
  def process
    return if user.nil?
    #this is going 
    discussion.comments.create(
      user: user,
      body: mail.decoded
      )
  end
  
  def user
    @users ||= User.find_by(email: mail.from)
  end
  
  def discussion
    @discussions ||= Discussion.find(discussion_id)
  end
  #return the database id from that url
  def discussion_id
    mail.recipients.find{ |r| MATCHER.match?(r) }
    recipient[MATCHER, 1]
    
  end
  #sends email back to the individual to say sorry no account exist blah blah...
  def ensure_user
    if user.nil?
      bounce_with UserMailer.missing(inbound_email)
      
    end 
  end 
end

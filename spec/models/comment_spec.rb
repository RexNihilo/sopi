require 'rails_helper'

RSpec.describe Comment, :type => :model do
  subject { create :comment}


  it "is valid with valid attributes" do
   expect(subject).to be_valid
  end
  
  it "is not valid without a user_id" do
  subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a discussion_id" do
  subject.discussion_id = nil
    expect(subject).to_not be_valid
  end
  
  it "is valid even without a body" do
  subject.body = nil
    expect(subject).to be_valid
  end
  
end
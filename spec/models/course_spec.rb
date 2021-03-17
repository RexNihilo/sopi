require 'rails_helper'



RSpec.describe Course, :type => :model do
  
  subject {
    Course.new(name: "Anything",
                        prefix: "CSCI",
                        id: 101,
                        number: 132,
                        section: 1)
  
  }

  it "is valid with valid attributes" do
   expect(subject).to be_valid
  end
  
  
  
  it "is not valid without a name"do
  subject.name = nil
    expect(subject).to_not be_valid
end

  it "is not valid without a prefix"do
  subject.prefix = nil
    expect(subject).to_not be_valid
end
  
  it "is not valid without a number"do
  subject.number = nil
    expect(subject).to_not be_valid
end
  it "is not valid without a section"do
  subject.section = nil
    expect(subject).to_not be_valid
end
end
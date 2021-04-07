require 'rails_helper'

RSpec.describe Student, type: :model do
    subject {create :student}
    
  context 'validation tests' do
   
      it "is valid with valid attributes" do
       expect(subject).to be_valid
      end
      
      it "is not valid without a user_id" do
      subject.Name = nil
        expect(subject).to be_valid
      end
    
      it "is not valid without a discussion_id" do
      subject.CWID = nil
        expect(subject).to be_valid
      end
        
      it "is not valid without a discussion_id" do
      subject.Concentration = nil
        expect(subject).to be_valid
      end
      
      it "is not valid without a discussion_id" do
      subject.Advisor = nil
        expect(subject).to be_valid
      end
  
  end
end
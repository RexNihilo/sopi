require 'rails_helper'

RSpec.describe Semester, type: :model do
    subject {create :semester}
    
  context 'validation tests' do
   
      it "is valid with valid attributes" do
       expect(subject).to be_valid
      end
      
      it "is not valid without one course" do
      subject.course1 = nil
        expect(subject).to_not be_valid
      end
      
      it "is valid without a course2" do
      subject.course2 = nil
        expect(subject).to be_valid
      end
      
      it "is valid without a course3" do
      subject.course3 = nil
        expect(subject).to be_valid
      end
      
      it "is valid without a course4" do
      subject.course4 = nil
        expect(subject).to be_valid
      end
                  
      it "is not valid without a season" do
      subject.season = nil
        expect(subject).to_not be_valid
      end  
      
      it "is not valid without a year" do
      subject.year = nil
        expect(subject).to_not be_valid
      end
      

      
  end
end
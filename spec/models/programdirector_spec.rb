require 'rails_helper'

RSpec.describe Programdirector, type: :model do
    subject {create :programdirector}
    
  context 'validation tests' do
   
      it "is valid with valid attributes" do
       expect(subject).to be_valid
      end
      
      it "is not valid without a name" do
      subject.Name = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a CWID" do
      subject.CWID = nil
        expect(subject).to_not be_valid
      end
  
  end
end
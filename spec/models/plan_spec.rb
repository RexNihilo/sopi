RSpec.describe Plan, type: :model do
    subject {create :plan}
    
          it "is valid with valid attributes" do
       expect(subject).to be_valid
      end
      
      it "is not valid without a user_id" do
      subject.nameofplan = nil
        expect(subject).to be_valid
      end 
  end
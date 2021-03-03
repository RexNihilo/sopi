require 'rails_helper'

RSpec.describe "professors/index", type: :view do
  before(:each) do
    assign(:professors, [
      Professor.create!(),
      Professor.create!()
    ])
  end

  it "renders a list of professors" do
    render
  end
end

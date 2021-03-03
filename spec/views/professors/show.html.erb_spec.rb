require 'rails_helper'

RSpec.describe "professors/show", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

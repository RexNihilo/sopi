require 'rails_helper'

RSpec.describe "programdirectors/show", type: :view do
  before(:each) do
    @programdirector = assign(:programdirector, Programdirector.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

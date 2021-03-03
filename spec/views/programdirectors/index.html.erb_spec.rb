require 'rails_helper'

RSpec.describe "programdirectors/index", type: :view do
  before(:each) do
    assign(:programdirectors, [
      Programdirector.create!(),
      Programdirector.create!()
    ])
  end

  it "renders a list of programdirectors" do
    render
  end
end

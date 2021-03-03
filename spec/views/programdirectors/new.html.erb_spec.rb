require 'rails_helper'

RSpec.describe "programdirectors/new", type: :view do
  before(:each) do
    assign(:programdirector, Programdirector.new())
  end

  it "renders new programdirector form" do
    render

    assert_select "form[action=?][method=?]", programdirectors_path, "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "programdirectors/edit", type: :view do
  before(:each) do
    @programdirector = assign(:programdirector, Programdirector.create!())
  end

  it "renders the edit programdirector form" do
    render

    assert_select "form[action=?][method=?]", programdirector_path(@programdirector), "post" do
    end
  end
end

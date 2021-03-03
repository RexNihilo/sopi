require 'rails_helper'

RSpec.describe "professors/new", type: :view do
  before(:each) do
    assign(:professor, Professor.new())
  end

  it "renders new professor form" do
    render

    assert_select "form[action=?][method=?]", professors_path, "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "semesters/edit", type: :view do
  before(:each) do
    @semester = assign(:semester, Semester.create!())
  end

  it "renders the edit semester form" do
    render

    assert_select "form[action=?][method=?]", semester_path(@semester), "post" do
    end
  end
end

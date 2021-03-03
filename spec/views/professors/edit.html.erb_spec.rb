require 'rails_helper'

RSpec.describe "professors/edit", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!())
  end

  it "renders the edit professor form" do
    render

    assert_select "form[action=?][method=?]", professor_path(@professor), "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "filials/new", type: :view do
  before(:each) do
    assign(:filial, Filial.new(
      child_id: 1,
      parent_id: 1
    ))
  end

  it "renders new filial form" do
    render

    assert_select "form[action=?][method=?]", filials_path, "post" do

      assert_select "input[name=?]", "filial[child_id]"

      assert_select "input[name=?]", "filial[parent_id]"
    end
  end
end

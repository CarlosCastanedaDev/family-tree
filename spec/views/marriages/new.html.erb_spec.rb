require 'rails_helper'

RSpec.describe "marriages/new", type: :view do
  before(:each) do
    assign(:marriage, Marriage.new(
      spouse1_id: 1,
      spouse2_id: 1,
      marriage_date: "MyString",
      divorce_date: "MyString"
    ))
  end

  it "renders new marriage form" do
    render

    assert_select "form[action=?][method=?]", marriages_path, "post" do

      assert_select "input[name=?]", "marriage[spouse1_id]"

      assert_select "input[name=?]", "marriage[spouse2_id]"

      assert_select "input[name=?]", "marriage[marriage_date]"

      assert_select "input[name=?]", "marriage[divorce_date]"
    end
  end
end

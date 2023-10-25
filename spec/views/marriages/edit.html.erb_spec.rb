require 'rails_helper'

RSpec.describe "marriages/edit", type: :view do
  let(:marriage) {
    Marriage.create!(
      spouse1_id: 1,
      spouse2_id: 1,
      marriage_date: "MyString",
      divorce_date: "MyString"
    )
  }

  before(:each) do
    assign(:marriage, marriage)
  end

  it "renders the edit marriage form" do
    render

    assert_select "form[action=?][method=?]", marriage_path(marriage), "post" do

      assert_select "input[name=?]", "marriage[spouse1_id]"

      assert_select "input[name=?]", "marriage[spouse2_id]"

      assert_select "input[name=?]", "marriage[marriage_date]"

      assert_select "input[name=?]", "marriage[divorce_date]"
    end
  end
end

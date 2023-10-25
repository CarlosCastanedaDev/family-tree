require 'rails_helper'

RSpec.describe "filials/edit", type: :view do
  let(:filial) {
    Filial.create!(
      child_id: 1,
      parent_id: 1
    )
  }

  before(:each) do
    assign(:filial, filial)
  end

  it "renders the edit filial form" do
    render

    assert_select "form[action=?][method=?]", filial_path(filial), "post" do

      assert_select "input[name=?]", "filial[child_id]"

      assert_select "input[name=?]", "filial[parent_id]"
    end
  end
end

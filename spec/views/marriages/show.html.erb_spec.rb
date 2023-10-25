require 'rails_helper'

RSpec.describe "marriages/show", type: :view do
  before(:each) do
    assign(:marriage, Marriage.create!(
      spouse1_id: 2,
      spouse2_id: 3,
      marriage_date: "Marriage Date",
      divorce_date: "Divorce Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Marriage Date/)
    expect(rendered).to match(/Divorce Date/)
  end
end

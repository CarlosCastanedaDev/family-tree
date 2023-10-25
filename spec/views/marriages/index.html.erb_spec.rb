require 'rails_helper'

RSpec.describe "marriages/index", type: :view do
  before(:each) do
    assign(:marriages, [
      Marriage.create!(
        spouse1_id: 2,
        spouse2_id: 3,
        marriage_date: "Marriage Date",
        divorce_date: "Divorce Date"
      ),
      Marriage.create!(
        spouse1_id: 2,
        spouse2_id: 3,
        marriage_date: "Marriage Date",
        divorce_date: "Divorce Date"
      )
    ])
  end

  it "renders a list of marriages" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Marriage Date".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Divorce Date".to_s), count: 2
  end
end

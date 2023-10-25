require 'rails_helper'

RSpec.describe "filials/index", type: :view do
  before(:each) do
    assign(:filials, [
      Filial.create!(
        child_id: 2,
        parent_id: 3
      ),
      Filial.create!(
        child_id: 2,
        parent_id: 3
      )
    ])
  end

  it "renders a list of filials" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end

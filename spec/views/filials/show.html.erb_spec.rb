require 'rails_helper'

RSpec.describe "filials/show", type: :view do
  before(:each) do
    assign(:filial, Filial.create!(
      child_id: 2,
      parent_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

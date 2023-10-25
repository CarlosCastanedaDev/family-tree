require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        first_name: "First Name",
        last_name: "Last Name",
        middle_name: "Middle Name",
        maiden_name: "Maiden Name",
        dob: "Dob",
        dod: "Dod",
        place_of_birth: "Place Of Birth",
        phone_number: "Phone Number",
        address: "Address",
        gender: "Gender"
      ),
      Person.create!(
        first_name: "First Name",
        last_name: "Last Name",
        middle_name: "Middle Name",
        maiden_name: "Maiden Name",
        dob: "Dob",
        dod: "Dod",
        place_of_birth: "Place Of Birth",
        phone_number: "Phone Number",
        address: "Address",
        gender: "Gender"
      )
    ])
  end

  it "renders a list of people" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Middle Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Maiden Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Dob".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Dod".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Place Of Birth".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Gender".to_s), count: 2
  end
end

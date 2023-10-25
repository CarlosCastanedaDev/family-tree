require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    assign(:person, Person.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Maiden Name/)
    expect(rendered).to match(/Dob/)
    expect(rendered).to match(/Dod/)
    expect(rendered).to match(/Place Of Birth/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Gender/)
  end
end

require 'rails_helper'

RSpec.describe "people/new", type: :view do
  before(:each) do
    assign(:person, Person.new(
      first_name: "MyString",
      last_name: "MyString",
      middle_name: "MyString",
      maiden_name: "MyString",
      dob: "MyString",
      dod: "MyString",
      place_of_birth: "MyString",
      phone_number: "MyString",
      address: "MyString",
      gender: "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input[name=?]", "person[first_name]"

      assert_select "input[name=?]", "person[last_name]"

      assert_select "input[name=?]", "person[middle_name]"

      assert_select "input[name=?]", "person[maiden_name]"

      assert_select "input[name=?]", "person[dob]"

      assert_select "input[name=?]", "person[dod]"

      assert_select "input[name=?]", "person[place_of_birth]"

      assert_select "input[name=?]", "person[phone_number]"

      assert_select "input[name=?]", "person[address]"

      assert_select "input[name=?]", "person[gender]"
    end
  end
end

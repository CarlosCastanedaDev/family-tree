require 'rails_helper'

RSpec.describe "photos/new", type: :view do
  before(:each) do
    assign(:photo, Photo.new(
      owner_id: 1,
      image_url: "MyString",
      caption: "MyString",
      location: "MyString"
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input[name=?]", "photo[owner_id]"

      assert_select "input[name=?]", "photo[image_url]"

      assert_select "input[name=?]", "photo[caption]"

      assert_select "input[name=?]", "photo[location]"
    end
  end
end

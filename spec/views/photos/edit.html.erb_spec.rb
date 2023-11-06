require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  let(:photo) {
    Photo.create!(
      owner_id: 1,
      image_url: "MyString",
      caption: "MyString",
      location: "MyString"
    )
  }

  before(:each) do
    assign(:photo, photo)
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(photo), "post" do

      assert_select "input[name=?]", "photo[owner_id]"

      assert_select "input[name=?]", "photo[image_url]"

      assert_select "input[name=?]", "photo[caption]"

      assert_select "input[name=?]", "photo[location]"
    end
  end
end

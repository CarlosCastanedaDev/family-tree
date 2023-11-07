require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        owner_id: 2,
        image_url: "Image Url",
        caption: "Caption",
        location: "Location"
      ),
      Photo.create!(
        owner_id: 2,
        image_url: "Image Url",
        caption: "Caption",
        location: "Location"
      )
    ])
  end

  it "renders a list of photos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Caption".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
  end
end

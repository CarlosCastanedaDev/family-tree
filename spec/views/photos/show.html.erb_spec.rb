require 'rails_helper'

RSpec.describe "photos/show", type: :view do
  before(:each) do
    assign(:photo, Photo.create!(
      owner_id: 2,
      image_url: "Image Url",
      caption: "Caption",
      location: "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(/Location/)
  end
end

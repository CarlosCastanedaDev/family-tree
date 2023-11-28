require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    assign(:recipe, Recipe.create!(
      recipe_name: "Recipe Name",
      image_url: "Image Url",
      description: "MyText",
      ingredients: "MyText",
      directions: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Recipe Name/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

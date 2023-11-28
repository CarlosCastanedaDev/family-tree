require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        recipe_name: "Recipe Name",
        image_url: "Image Url",
        description: "MyText",
        ingredients: "MyText",
        directions: "MyText"
      ),
      Recipe.create!(
        recipe_name: "Recipe Name",
        image_url: "Image Url",
        description: "MyText",
        ingredients: "MyText",
        directions: "MyText"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Recipe Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end

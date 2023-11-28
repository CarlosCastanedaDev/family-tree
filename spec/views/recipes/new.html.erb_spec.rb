require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      recipe_name: "MyString",
      image_url: "MyString",
      description: "MyText",
      ingredients: "MyText",
      directions: "MyText"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input[name=?]", "recipe[recipe_name]"

      assert_select "input[name=?]", "recipe[image_url]"

      assert_select "textarea[name=?]", "recipe[description]"

      assert_select "textarea[name=?]", "recipe[ingredients]"

      assert_select "textarea[name=?]", "recipe[directions]"
    end
  end
end

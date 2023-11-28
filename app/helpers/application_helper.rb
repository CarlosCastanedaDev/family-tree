module ApplicationHelper
  def format_ingredients(ingredients)
    ingredients.split(',').map { |ingredient| content_tag(:li, ingredient.strip, class: "ml-4 pl-2 list-disc") }.join.html_safe
  end

  def format_directions(directions)
    directions.split(',').map { |direction| content_tag(:li, direction.strip, class: "ml-4 pl-2 list-decimal") }.join.html_safe
  end
end

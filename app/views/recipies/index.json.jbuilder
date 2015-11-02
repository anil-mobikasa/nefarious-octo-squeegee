json.array!(@recipies) do |recipy|
  json.extract! recipy, :id, :description, :cultural_preferance, :ingredients, :unit_measure, :amount, :dietitian_tips, :user_id
  json.url recipy_url(recipy, format: :json)
end

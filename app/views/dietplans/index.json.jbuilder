json.array!(@dietplans) do |dietplan|
  json.extract! dietplan, :id, :title, :recipy_id, :step_id, :user_id
  json.url dietplan_url(dietplan, format: :json)
end

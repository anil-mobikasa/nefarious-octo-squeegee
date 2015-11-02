json.array!(@dietplans) do |dietplan|
  json.extract! dietplan, :id
  json.url dietplan_url(dietplan, format: :json)
end

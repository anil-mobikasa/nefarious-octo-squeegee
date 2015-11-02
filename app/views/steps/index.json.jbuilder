json.array!(@steps) do |step|
  json.extract! step, :id, :step_number, :instruction
  json.url step_url(step, format: :json)
end

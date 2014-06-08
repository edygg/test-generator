json.array!(@questions) do |question|
  json.extract! question, :id, :question_text, :hint
  json.url question_url(question, format: :json)
end

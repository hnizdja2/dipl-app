json.array!(@authors) do |author|
  json.extract! author, :id, :firstname, :surname
  json.url author_url(author, format: :json)
end

json.array!(@mainprocesses) do |mainprocess|
  json.extract! mainprocess, :id
  json.url mainprocess_url(mainprocess, format: :json)
end

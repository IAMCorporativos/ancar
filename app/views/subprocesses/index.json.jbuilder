json.array!(@subprocesses) do |subprocess|
  json.extract! subprocess, :id
  json.url subprocess_url(subprocess, format: :json)
end

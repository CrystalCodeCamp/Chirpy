json.array!(@chirps) do |chirp|
  json.extract! chirp, :id, :text
  json.url chirp_url(chirp, format: :json)
end

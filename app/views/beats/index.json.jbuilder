json.array!(@beats) do |beat|
  json.extract! beat, :name, :owner, :media
  json.url beat_url(beat, format: :json)
end

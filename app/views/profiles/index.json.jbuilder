json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :address, :age, :mobile
  json.url profile_url(profile, format: :json)
end

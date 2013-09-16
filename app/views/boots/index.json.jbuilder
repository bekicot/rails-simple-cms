json.array!(@boots) do |boot|
  json.extract! boot, :title, :dec
  json.url boot_url(boot, format: :json)
end

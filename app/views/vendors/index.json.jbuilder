json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :company
  json.url vendor_url(vendor, format: :json)
end

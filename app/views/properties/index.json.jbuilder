json.array!(@properties) do |property|
  json.extract! property, :id, :title, :subtitle, :description, :size, :type, :address, :city, :country, :operation_type, :extras, :user_id
  json.url property_url(property, format: :json)
end

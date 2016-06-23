json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :name, :last_name, :nif, :email, :telephone1, :telephone2, :idioma, :adress, :city, :country, :postal_code, :user_id
  json.url buyer_url(buyer, format: :json)
end

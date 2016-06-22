json.array!(@propietarios) do |propietario|
  json.extract! propietario, :id, :name, :apellidos, :nif, :email, :telephone, :telephone2, :asesor, :asesor_id
  json.url propietario_url(propietario, format: :json)
end

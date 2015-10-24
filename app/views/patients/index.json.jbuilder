json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :phone, :birthday, :cep, :adress
  json.url patient_url(patient, format: :json)
end

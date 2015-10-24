json.array!(@anamnesis) do |anamnesi|
  json.extract! anamnesi, :id, :queixa_principal, :como_aconteceu, :data_inicio, :patient_id
  json.url anamnesi_url(anamnesi, format: :json)
end

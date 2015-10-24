json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :comentario, :data_entrada, :data_saida, :patient_id
  json.url appointment_url(appointment, format: :json)
end

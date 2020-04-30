json.extract! patient, :id, :name, :os, :dni, :created_at, :updated_at
json.url patient_url(patient, format: :json)

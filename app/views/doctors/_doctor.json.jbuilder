json.extract! doctor, :id, :name, :email, :consultant, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)

json.extract! person, :id, :first_name, :last_name, :middle_name, :maiden_name, :dob, :dod, :place_of_birth, :phone_number, :address, :gender, :created_at, :updated_at
json.url person_url(person, format: :json)

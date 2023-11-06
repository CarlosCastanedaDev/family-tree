json.extract! photo, :id, :owner_id, :image_url, :caption, :location, :created_at, :updated_at
json.url photo_url(photo, format: :json)

json.extract! photo, :id, :user_id, :photo_timestamp, :tz, :latitude, :longitude, :temperature, :condition, :created_at, :updated_at
json.url photo_url(photo, format: :json)

json.extract! seat, :id, :flight_id, :user_id, :created_at, :updated_at, :name, :reservation_id
json.url seat_url(seat, format: :json)

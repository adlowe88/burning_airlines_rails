json.extract! flight, :id, :origin, :destination, :date, :airplane_id, :seats_left, :created_at, :updated_at, :airplane, :seats
json.url flight_url(flight, format: :json)

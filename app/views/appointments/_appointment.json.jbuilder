json.extract! appointment, :id, :created_at, :updated_at, :start_time, :end_time, :location, :has_seen
json.url appointment_url(appointment, format: :json)

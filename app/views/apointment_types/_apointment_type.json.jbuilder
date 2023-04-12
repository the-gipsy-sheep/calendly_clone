json.extract! apointment_type, :id, :name, :location, :description, :color, :duration, :payment_required, :price, :user_id, :created_at, :updated_at
json.url apointment_type_url(apointment_type, format: :json)
json.description apointment_type.description.to_s

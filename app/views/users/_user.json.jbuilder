json.extract! user, :id, :name, :title, :prof_pic, :rating, :created_at, :updated_at, :description
json.url user_url(user, format: :json)

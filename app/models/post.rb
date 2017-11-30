class Post < ActiveRecord::Base
  belongs_to :user
  has_many :users, through: :appointments
end

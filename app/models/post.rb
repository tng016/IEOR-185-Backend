class Post < ActiveRecord::Base
  belongs_to :user
  has_many :users, through: :appointments
  
  def self.init(post)
    Post.create!(user_id: post[:user_id], image: post[:image], price: post[:price], rating: post[:rating], subject: post[:subject], description: post[:description])
  end
end

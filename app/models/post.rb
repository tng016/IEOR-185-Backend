class Post < ActiveRecord::Base
  belongs_to :user
  has_many :users, through: :appointments
  has_many :qualifications
  
  def self.init(post)
    Post.create!(user_id: post[:user_id], image: post[:image], price: post[:price], rating: post[:rating], subject: post[:subject], description: post[:description],category: post[:category])
  end
  
  def genHash()
      @output = Hash.new
      @output["post_id"] = self.id
      @output["post_image"] = self.image
      @output["post_subject"] = self.subject
      @output["post_description"] = self.description
      @output["post_price"] = self.price
      @output["post_category"] = self.category
      @user = User.find(self.user_id)
      @output["user_id"] = @user.id
      @output["user_name"] = @user.name
      @output["user_title"] = @user.title
      @output["user_prof_pic"] = @user.prof_pic
      @output["user_rating"] = @user.rating
      @qualifications = self.qualifications
      @qualifications.each{|q| @output["qualification_"+q.title] = q.description}
      return @output
    end
end

class User < ActiveRecord::Base
    has_many :posts, through: :appointments
    has_many :qualifications
    
    def self.init(user)
        User.create!(name: user[:name], title: user[:title], prof_pic: user[:prof_pic], rating: user[:rating], description: user[:description])
    end
end

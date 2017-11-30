class User < ActiveRecord::Base
    has_many :posts, through: :appointments
    
    def self.init(user)
        User.create!(name: user[:name], title: user[:title], prof_pic: user[:prof_pic], rating: user[:rating])
    end
end

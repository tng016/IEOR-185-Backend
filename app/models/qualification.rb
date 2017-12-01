class Qualification < ActiveRecord::Base
  belongs_to :post
  
  def self.init(q)
        Qualification.create!(post_id: q[:post_id], title: q[:title])
    end
end

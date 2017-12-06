class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  def self.init(appt)
    Appointment.create!(user_id: appt[:user_id], post_id: appt[:post_id], has_seen: false, start_time: appt[:start_time],end_time: appt[:end_time], location: appt[:location])
  end
  
  def genHash()
      @output = Hash.new
      @output["id"] = self.id
      @output["start_time"] = self.start_time
      @output["end_time"] = self.end_time
      @output["location"] = self.location
      @output["has_seen"] = self.has_seen
      @output["post_id"] = self.post_id
      @output["user_id"] = self.user_id
      @output["user_owner"] = self.post.user_id
      return @output
    end
end

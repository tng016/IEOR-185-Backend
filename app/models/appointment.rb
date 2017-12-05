class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  def self.init(appt)
    Appointment.create!(user_id: appt[:user_id], post_id: appt[:post_id], has_seen: false, start_time: appt[:start_time],end_time: appt[:end_time], location: appt[:location])
  end
end

class Stat < ApplicationRecord
  attr_accessible :attendee_id, :attended_event_id
  belongs_to :attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
end

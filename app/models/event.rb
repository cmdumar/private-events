class Event < ApplicationRecord
  has_many :stats, foreign_key: :attended_event_id
  has_many :event_attendees, through: :stats, source: :attendee
  belongs_to :creator, class_name: "User"
end

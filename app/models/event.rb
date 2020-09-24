class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :stats, foreign_key: :attended_event
  has many :event_attendees, through: :stats, source: :attendee
end
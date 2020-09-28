class User < ApplicationRecord
  has_many :stats, foreign_key: :attendee_id
  has_many :events_attended, through: :stats, source: :attended_event
  has_many :events, foreign_key: :creator_id, class_name: "Event"
end

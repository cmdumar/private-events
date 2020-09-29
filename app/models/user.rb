class User < ApplicationRecord
  has_many :stats, foreign_key: :attendee_id, dependent: :destroy
  has_many :events_attended, through: :stats, source: :attended_event, dependent: :destroy
  has_many :events, foreign_key: :creator_id, class_name: "Event", dependent: :destroy
end

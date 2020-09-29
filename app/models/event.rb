class Event < ApplicationRecord
  has_many :stats, foreign_key: :attended_event_id, dependent: :destroy
  has_many :event_attendees, through: :stats, source: :attendee, dependent: :destroy
  belongs_to :creator, class_name: "User"
  scope :past, -> (time) { where("date < ?", time) }
  scope :upcoming, -> (time) { where("date > ?", time) }
end

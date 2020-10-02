class Event < ApplicationRecord
  has_many :stats, foreign_key: :event_id, dependent: :destroy
  has_many :event_attendees, through: :stats, source: :user, dependent: :destroy
  belongs_to :creator, class_name: 'User'
  validates :title, presence: true, length: { in: 10..20 }
  validates :description, presence: true, length: { in: 30..300 }
  validates :date, presence: true
end

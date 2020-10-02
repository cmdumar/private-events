class User < ApplicationRecord
  has_many :stats, foreign_key: :user_id, dependent: :destroy
  has_many :events_attended, through: :stats, source: :event, dependent: :destroy
  has_many :events, foreign_key: :creator_id, class_name: 'Event', dependent: :destroy
  validates :username, presence: true, uniqueness: true, length: { in: 5..16 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
end

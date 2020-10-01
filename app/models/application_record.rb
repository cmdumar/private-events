class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :past, ->(time) { where('date < ?', time) }
  scope :upcoming, ->(time) { where('date > ?', time) }
end

class Sub < ApplicationRecord
  has_many :topics
  validate :name, presence: true
end

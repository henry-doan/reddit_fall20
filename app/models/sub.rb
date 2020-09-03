class Sub < ApplicationRecord

  validate :name, presence: true
end

class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, presence: true, uniqueness: true
end

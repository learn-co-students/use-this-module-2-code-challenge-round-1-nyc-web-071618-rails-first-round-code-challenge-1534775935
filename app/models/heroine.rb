class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, uniqueness:true

  # scope :power, -> (power_id) { where power_id: power_id }
  # bonus
end

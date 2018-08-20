class Heroine < ApplicationRecord
  belongs_to :power
  # delegate :name, to: :power, prefix: :super

  validates :super_name, uniqueness: true

  def self.search(search)
    Heroine.where(power_id: (Power.find_by(name: search).id))
  end

end

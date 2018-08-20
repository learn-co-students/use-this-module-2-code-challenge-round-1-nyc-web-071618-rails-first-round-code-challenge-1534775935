class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, uniqueness: true

  def self.filter_by_power(power)
    if power
      power_instance = Power.find_by(name: power)
      if power_instance
        return self.where(power_id: power_instance.id)
      else
        return Heroine.all
      end
    else
      return Heroine.all
    end
  end
end

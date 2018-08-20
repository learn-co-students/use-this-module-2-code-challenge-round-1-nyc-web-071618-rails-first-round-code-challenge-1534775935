class Power < ApplicationRecord
  has_many :heroines

  def power=(name)
    self.power = Power.find_or_create_by(name: name)
  end

  def power
    self.power ? self.power.name : nil
  end
end

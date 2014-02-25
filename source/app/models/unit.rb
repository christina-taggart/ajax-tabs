class Unit < ActiveRecord::Base
  belongs_to :phase
  has_many :challenges

  def self.all_phase_units
    self.all.map { |unit| "#{unit.phase.name}-#{unit.number}" }
  end

  def self.all_phase_units_id
    self.all.map { |unit| unit.id }
  end
end

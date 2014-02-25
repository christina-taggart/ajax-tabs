class Unit < ActiveRecord::Base
  belongs_to :phase
  has_many :challenges

  def name
    phase_name = Phase.find(phase_id).name
    "#{phase_name}-#{number}"
  end

  def self.get_uniq
    unique_units = Unit.all.map {|unit| [unit.number, unit.phase_id] }.uniq
    units = unique_units.map {|unit| self.where(number: unit[0], phase_id: unit[1]).first}
  end
end

class Unit < ActiveRecord::Base
  belongs_to :phase
  has_many :challenges

  def self.number_and_phase_name
    self.all.map {|unit| "#{unit.phase.name}-#{unit.number}"}
  end
end

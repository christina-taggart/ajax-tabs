class Challenge < ActiveRecord::Base
  belongs_to :unit

  def self.grouped_by_phase_and_level
    by_phase = Challenge.all.group_by {|challenge| "#{challenge.unit.phase.name}-#{challenge.unit.number}" }.sort_by{ |phase, level| level }
    Hash[ by_phase ]
  end
end

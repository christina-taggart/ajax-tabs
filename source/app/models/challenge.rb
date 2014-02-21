class Challenge < ActiveRecord::Base
  belongs_to :phase

  def self.grouped_by_phase_and_level
    by_phase = Challenge.all.group_by {|challenge| "#{challenge.phase.name}-#{challenge.level}" }.sort_by{ |phase, level| level }
    Hash[ by_phase ]
  end
end

class Challenge < ActiveRecord::Base
  belongs_to :unit

  IMAGES = %w{
    http://cdn.attackofthecute.com/December-13-2013-02-00-13-jj.jpg
    http://cdn.attackofthecute.com/April-15-2013-00-38-11-jljksdflkjdsf.jpg
    http://cdn.attackofthecute.com/February-08-2014-02-17-02-c.jpg
    http://cdn.attackofthecute.com/February-08-2014-04-00-47-sd.jpg
    http://cdn.attackofthecute.com/January-04-2013-19-39-37-hh.jpg
  }
  def self.grouped_by_phase_and_level
    # by_phase = Challenge.all.group_by {|challenge| "#{challenge.unit.phase.name}-#{challenge.unit.number}" }.sort_by{ |phase, level| level }
    # Hash[ by_phase ]
    by_phase = Unit.all.group_by {|unit| "#{unit.phase.name}-#{unit.number}"}.sort_by{ |phase, level| level }
    Hash[by_phase]
  end

  def image
    IMAGES.sample
  end
end

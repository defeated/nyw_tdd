class Schedule

  attr_accessor :date

  def initialize(date_string=nil)
    self.date = Time.parse(date_string) if date_string
    super()
  end

  def plan
    return 'No plan' unless self.date.is_a? Time

    if self.date.wday == 2
      'Boston.rb'
    elsif (1..5).include? self.date.wday
      'Hack'
    else
      'Fish'
    end
  end

end

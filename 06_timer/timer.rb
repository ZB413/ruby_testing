class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0;
  end

  def time_string
    minutes = @seconds/60
    real_seconds = @seconds%60
    hours = minutes/60
    real_minutes = minutes%60
    time = hours.to_s.rjust(2,'0')+":"+real_minutes.to_s.rjust(2,'0')+":"+real_seconds.to_s.rjust(2,'0')
  end
end

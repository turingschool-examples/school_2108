class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(time, hours)
    @time = time
    @hours = hours
  
  end

  def start_time
    @time = '9:00'
  end
  def hours_in_school_day
    @hours = 7
  end
  def student_names
    @students = []
  end

end

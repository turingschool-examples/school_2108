class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names
  def initialize("9:00", 7)
    @start_time          = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names       = []
  end
end
school = School.new("9:00", 7)


  def add_student_name
    @student_names << "Aurora"
    @student_names << "tim"
    @student_names << "megan"
  end

  def end_time (start_time, hours_in_school_day)
    start_time + hours_in_school_day
  end

  school_1 = School.new('9:00', 7)
  school_2 = School.new('9:00', 3)

  def convert_end_time_to_clock_time
    @end_time = end_time
school.convert_end_time_to_clock_time = "4:00"

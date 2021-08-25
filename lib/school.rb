require 'rspec'

class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time           = start_time
    @hours_in_school_day  = hours_in_school_day
    @student_names        = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    interger(@hours_in_school_day) + @start_time
    return
  end

end

school = School.new('9:00', 7)
school.add_student_name('Aurora')
school.add_student_name('tim')
school.add_student_name('megan')

school.end_time

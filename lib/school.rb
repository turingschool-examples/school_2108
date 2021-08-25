class School
  attr_reader :start_time,
              :hours_in_school_day
              :student_names

def initialize(start_time, hours_in_school_day)
  @start_time = start_time
  @hours_in_school_day = hours_in_school_day
  @student_names = []

def add_student_name
  @student_names.push()
end

def end_time
  start_time.to_i + hours_in_school_day = end_time.to_s.insert(:00)
end

end
end

school = School.new('9:00', 7)
school.add_student_name('Aurora')
school.add_student_name('tim')
school.add_student_name('megan')
school.end_time
# I couldn't figure out why my add_student_name method wasn't working,
# and got completely lost on the end_time. I understand all these concepts abstractly
#but do not have the syntax knowledge and I was unsuccessful googling.

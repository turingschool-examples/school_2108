#I am embarassed to turn this in but I'm going to work on it afterwards and try to finish after school


class School
  def initialize(school, start_time)
    @school = school
    @start_time = '9:00'
    @student_names = []
  end

  def start_time
    "9:00"
  end

  def hours_in_school_day
    7
  end

  def student_names
    []
  end

  def add_student_name(student_names)
    student_names.push ['']

  end
end

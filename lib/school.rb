class School
  def initialize(start, length)
    @start = start
    @length = length
    @students = []
  end

  def start_time
    @start
  end

  def hours_in_school_day
    @length
  end

  def student_names
    @students
  end

  def add_student_name(name)
    @students << name
  end

  def end_time
    (@start.to_i + @length).to_s + ":00"
  end

  def is_full_time?
    if @length >=4
      return true
    end
  end

  def standard_student_names
    @students.map {|student| student.capitalize}
  end

  def convert_end_time_to_clock_time
      ((@start.to_i + @length) - 12).to_s + ":00"
  end
end

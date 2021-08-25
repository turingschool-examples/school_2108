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
end

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
    str_time = start_time.gsub(/\D/, "")
    str_time = str_time.delete("0")
    int_time = str_time.to_i
    time_end = int_time + @hours_in_school_day
    return "#{time_end}:00"
  end
  

end

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

  def is_full_time?
    if @hours_in_school_day <= 4
      return false
    else
      return true
    end
  end

  def standard_student_names
    standard_names = []
    @student_names.each do |student_name|
      standard_names << student_name.capitalize
    end
    return standard_names

  end
end

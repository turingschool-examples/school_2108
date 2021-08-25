class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names,
              :end_time,
              :standard_student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = end_time
    @standard_student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    @end_time = ((@hours_in_school_day + @start_time.to_i).to_s + ":00")
  end

  def is_full_time?
    if @hours_in_school_day > 4
      return true
    end
  end

  def standard_student_names()
    standard_student_names = []
    @student_names.each do |name|
      standard_student_names << name.capitalize
    end
    return standard_student_names
  end

end

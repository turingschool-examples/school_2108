class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names,
              :end_time
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end
#Code below is not correct.  Not sure how to add hours integer to time.
  def end_time(start_time, hours_in_school_day)
    @start_time.to_i + @hours_in_school_day
  end

  def is_full_time?
    if @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.capitalize
  end

end

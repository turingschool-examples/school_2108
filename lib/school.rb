class School
  def initialize (start_time, hours_in_school_day)
    @start_time          = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names       = []
  end

  def start_time
    @start_time
  end

  def hours_in_school_day
    @hours_in_school_day
  end

  def student_names
    @student_names
  end

  def end_time
    if @start_time.length == 3
      @end_time = @start_time[0].to_i + @hours_in_school_day
    else
      @end_time = @start_time[0,1].to_i + @hours_in_school_day
    end

    @end_time = @end_time.to_s + ":00"
  end

  def add_student_name(student_names)
    @student_names.push(student_names)
  end

end

class School
  attr_reader :start_time
              :hours_in_school_day
              :student_names

  def initialize
    @start_time          = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names       = []
  end

  def add_student_name('name')
    @student_names << 'name'
  end

  def end_time
    @start_time.to_f + @hours_in_school_day
  end

  def full_time
    if @hours_in_school_day >= 7
      p true
    else p false
  end

  def convert_end_time_to_clock_time
    (end_time.to_f - 12).to_s
  end 
end

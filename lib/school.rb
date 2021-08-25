class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    end_time = @start_time.to_i + @hours_in_school_day
    end_time.to_s + ":00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    capital_names = []
    @student_names.each {|name|
     capital_names << name.capitalize
    }
    capital_names
  end

  def convert_end_time_to_clock_time
    end_clock = end_time
  if end_clock.to_i > 12
    return (end_clock.to_i - 12).to_s + ":00"
  else
    return end_clock
  end
  end
end

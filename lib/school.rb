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
    end_time = ":00"
    old_time = start_time.split(':')
    initial_hours = old_time[0].to_i
    total_hours = initial_hours + hours_in_school_day
    end_time.insert(0, total_hours.to_s)
  end

  def is_full_time?
    if hours_in_school_day >= 4
      true
    else
      false
    end
  end

  def standard_student_names
    @student_names.each do |student|
      student.capitalize
    end
  end
end

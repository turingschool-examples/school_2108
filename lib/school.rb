class School

  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize (start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    start_time_hour = Integer(start_time[0])
    ends_at = (start_time_hour + hours_in_school_day)
    "#{ends_at}:00"
  end

  def is_full_time?
    if hours_in_school_day == 7
      return true
    end
  end

  def standard_student_names
    new_name_list = []

    student_names.each do |name|

      new_name_list << name.capitalize
    end

    return new_name_list
  end

  def convert_end_time_to_clock_time
    start_time_hour = Integer(start_time[0])
    ends_at = (start_time_hour + hours_in_school_day)

    if ends_at > 12
      ends_at = ends_at - 12
    end

    "#{ends_at}:00"
  end
end

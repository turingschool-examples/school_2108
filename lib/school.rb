require 'time'

class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def end_time
    #two_four_time = Time.strptime(start_time, "%I:%M").strftime("%H:%M")
    #return hours_in_school_day + two_four_time
    int_time = start_time.to_i
    total_time = int_time + hours_in_school_day

    if total_time < 10
      two_four_time = ("0" + total_time.to_s + ":00")
    else
      two_four_time = (total_time.to_s + ":00")
    end
  end

  def add_student_name(student_name)
    @student_names.push(student_name)
  end

  def is_full_time?
    if hours_in_school_day > 4
      full_time = true
    else full_time = false
    end
    return full_time
  end

  def standard_student_names
    new_array = []
    for name in @student_names
       a = name.capitalize
       new_array.push(a)
    end
    @student_names = new_array
  end

  def convert_end_time_to_clock_time
    if school.end_time.to_i >= 12
      int_time = school.end_time.to_i - 12
      new_time = int_time.to_s + ":00"
    else
      new_time = school.end_time.to_i + ":00"
    end
  end
end

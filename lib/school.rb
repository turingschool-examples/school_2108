class School
  require 'date'
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
    hour = (@start_time.to_i + hours_in_school_day)
    (hour.to_s + ":00").to_s
    # Time.at(hour*3600).utc.strftime("%H:%M") <-- This works,
    # but not sure if it's the right thing to do
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    standard = @student_names.map do |name|
      name.capitalize
    end
    standard
  end

  def convert_end_time_to_clock_time
    new_hour = end_time.to_i - 12
    (new_hour.to_s + ":00").to_s
    # (Time.at(new_hour*3600).utc.strftime("%R")) #<- same but gives a
    # leading zero
  end
end

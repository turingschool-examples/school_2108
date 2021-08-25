class School
  attr_reader(:start_time, :hours_in_school_day, :student_names)
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names.push(name)
  end

  def end_time

    [start_time, (hours_in_school_day + (:00))].sum(':')
  end

  def is_full_time
    p true
  end

  def standard_student_names
    @student_names.map!(&:capitalize)
  end

end

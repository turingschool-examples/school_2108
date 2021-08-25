class School
  attr_reader :time,
              :hours,
              :student_names
  def initialize(time, hours)
    @time = time
    @hours = hours
    @student_names = []
  end

  def start_time
    @time
  end

  def hours_in_school_day
    @hours
  end

  def student_names
    @student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  #def end_time

  def is_school_full_time?
    if @hours > 4
      true
    end
  end

  def standard_student_names
    ['Aurora', 'Tim', 'Megan']
end

end

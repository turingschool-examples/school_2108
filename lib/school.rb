class School
  attr_reader :time, :hours, :name

  def initialize(time, hours)
    @time = time
    @hours = hours
    @name = name
  end

  def start_time
    time = "9:00"
  end

  def hours_in_school_day
    hours = 7
  end

  def student_names
    name = []
  end

def add_student_name(name)
   @name = name.map['Aurora', 'tim', 'megan']
end

end

class School

  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time = '9:00', hours_in_school_day = 6) #'9:00' and 6 hours are default values, but they'll be replaced by arguments that are entered when an instance of the School class is created
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

#Iteration 2
  def add_student_name(name)
    name.to_s
    @student_names << name
  end

  def end_time
    end_of_day = @start_time.to_i + @hours_in_school_day
    #I had some extra time so I started to explore edge cases:
    if end_of_day >= 24 #this if statement makes sure we're getting a time between 0:00 and 23:59
      end_of_day -= 24
    elsif end_of_day < 0
      end_of_day += 24
    end
    end_of_day.to_s + ":00"
  end

#Iteration 3
  def is_full_time?
    if @hours_in_school_day > 4
      true
    elsif @hours_in_school_day <= 4
      false
    end
  end

  def standard_student_names
    @standard_names = []

    @student_names.each do |name|
      if name.is_a? String #ensures the name will be a string before trying to capitalize. otherwise, it will be skipped.
        @standard_names << name.capitalize
      end
    end

    @standard_names
  end

#Iteration 4
  def convert_end_time_to_clock_time
    end_of_day = @start_time.to_i + @hours_in_school_day
    if end_of_day >= 24
      end_of_day -= 24
    end
    if end_of_day >= 13
      end_of_day -= 12
    end
    end_of_day.to_s + ":00"
  end
end

require 'rspec'
require './lib/school'

RSpec.describe School do
  context 'Iteration 1' do
    it 'exists' do
      school = School.new('9:00', 7)

      expect(school).to be_a(School)
    end

    it 'has a start time' do
      school = School.new('9:00', 7)

      expect(school.start_time).to eq('9:00')
    end

    it 'has hours in a school day' do
      school = School.new('9:00', 7)

      expect(school.hours_in_school_day).to eq(7)
    end

    it 'starts with no student names' do
      school = School.new('9:00', 7)

      expect(school.student_names).to eq([])
    end
  end

  context 'Iteration 2' do
    it 'can add student names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.student_names).to eq(['Aurora', 'tim', 'megan'])
    end

    it 'can calculate end time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.end_time).to eq('16:00')
      expect(school_2.end_time).to eq('12:00')
    end
  end

  context 'Iteration 3' do
    it 'can determine if it is full_time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.is_full_time?).to eq(true)
      expect(school_2.is_full_time?).to eq(false)
    end

    it 'can standardize student names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.standard_student_names).to eq(['Aurora', 'Tim', 'Megan'])
    end
  end

  context 'Iteration 4' do
    it 'can convert to 12 hour time' do
      school = School.new('9:00', 7)

      expect(school.convert_end_time_to_clock_time).to eq('4:00')
    end
  end

  context 'Edge Cases' do
    it 'accounts for end times after midnight' do
      school_3 = School.new('20:00', 10)

      expect(school_3.end_time).to eq('6:00')
    end

    it 'skips names that are not strings' do
      school_3 = School.new('20:00', 10)

      school_3.add_student_name(15.26)
      school_3.add_student_name('Aurora')
      school_3.add_student_name('tim')
      school_3.add_student_name('megan')

      expect(school_3.standard_student_names).to eq(["Aurora", "Tim", "Megan"])
    end
  end
end

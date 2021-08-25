require 'rspec'
require './lib/school'

RSpec.describe School do
  context 'Iteration 1' do
    it 'exists' do
      school = School.new('9:00', 7)

      expect(school).to be_a(School)
    end

    xit 'has a start time' do
      school = School.new('9:00', 7)

      expect(school.start_time).to eq('9:00')
    end

    xit 'has hours in a school day' do
      school = School.new('9:00', 7)

      expect(school.hours_in_school_day).to eq(7)
    end

    xit 'starts with no student names' do
      school = School.new('9:00', 7)

      expect(school.student_names).to eq([])
    end
  end

  context 'Iteration 2' do
    xit 'can add student names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.student_names).to eq(['Aurora', 'tim', 'megan'])
    end

    xit 'can calculate end time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.end_time).to eq('16:00')
      expect(school_2.end_time).to eq('12:00')
    end
  end

  context 'Iteration 3' do
    xit 'students have standard names' do
      student_names.capitalize

      expect(school.student_names).to eq(['Aurora', 'Tim', 'Megan'])
    end
  end

  context 'Iteration 4' do
    xit 'end time equal to clock time'
    school_1 = School.new('9:00', 7)
    school_2 = School.new('9:00', 3)

      expect(school_1.end_time).to eq('4:00')
      expect(school_2.end_time).to eq('12:00')

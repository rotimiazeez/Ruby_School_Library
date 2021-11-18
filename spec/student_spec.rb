require 'minitest/autorun'
require_relative '../student'
require_relative '../classroom'

describe Student do
  before :each do
    fresher = Classroom.new('Fresher')
    @student = Student.new(21, fresher, 'Carlos')
  end

  it 'is an instance of the class?' do
    expect(@student).to be_instance_of Student
  end

  it 'returns correct name' do
    name = @student.name
    expect(name).to eql 'Carlos'
  end

  it 'check if student is kind of Person' do
    expect(@student).to be_kind_of Person
  end

  it 'returns classroom of student' do
    expect(@student.classroom.label).to eql 'Fresher'
  end

  it 'plays hooky' do
    hooky_design = @student.play_hooky
    expect(hooky_design).to eql "¯\(ツ)/¯"
  end
end

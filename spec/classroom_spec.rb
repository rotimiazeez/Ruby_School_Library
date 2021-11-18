require 'minitest/autorun'
require_relative '../classroom'
require_relative '../student'

describe 'Classroom' do
  before :all do
    @st1 = Student.new(22, '1b', 'Carlos')
    @st2 = Student.new(27, '1c', 'Hamza')

    @classroom = Classroom.new('React.js')
  end

  it 'check label' do
    label = @classroom.label
    expect(label).to eq 'React.js'
  end

  it 'add student to classroom' do
    @classroom.add_student(@st1)
    name_first_student = @classroom.students[0].name
    expect(name_first_student).to match 'Carlos'
  end

  it 'check if classroom is updated in student class' do
    classroom_st1 = @st1.classroom
    expect(classroom_st1).to eq @classroom
  end
end

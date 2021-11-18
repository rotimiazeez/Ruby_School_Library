require 'minitest/autorun'
require_relative '../student'
require_relative '../classroom'

describe Student do
  before :each do
    fresher = Classroom.new('Fresher')
    @student = Student.new(21, fresher, 'Carlos')
  end

  it 'returns correct name' do
    name = @student.name
    expect(name).to eql 'Carlos'
  end

  it 'returns id of student' do
    id = @student.id
    expect(id).to be_kind_of Numeric
  end

  describe '#classroom' do
    it 'returns classroom of student' do
      expect(@student.classroom.label).to eql 'Fresher'
    end
  end

  describe '#to_s' do
    it 'returns student info' do
      expect(@student.to_s).to be_kind_of String
    end
  end
end

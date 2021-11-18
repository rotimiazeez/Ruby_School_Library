require 'minitest/autorun'
require_relative '../teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new(34, 'Space travel', 'ashley')
  end

  it 'check if teacher is kind of Person' do
    expect(@teacher).to be_kind_of Person
  end

  it 'returns correct name' do
    teacher_name = @teacher.name
    expect(teacher_name).to match 'ashley'
  end

  it 'returns validate name of teacher' do
    validate_name = @teacher.validate_name
    expect(validate_name).to match 'Ashley'
  end

  it 'returns boolean value' do
    expect(@teacher.can_use_services?).to be true
  end

  it 'returns teacher info' do
    expect(@teacher.to_s).to be_kind_of String
  end
end

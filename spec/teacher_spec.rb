require 'minitest/autorun'
require_relative '../teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new(age: 34, specialization: 'Space travel', name: 'Ashley brown')
  end

  describe '#name' do
    it 'returns correct name' do
      expect(@teacher.name).to eql 'Ashley brown'
    end
  end

  describe '#id' do
    it 'returns id of teacher' do
      expect(@teacher.id).to be_kind_of Numeric
    end
  end

  describe '#can_use_services?' do
    it 'returns boolean value' do
      expect(@teacher.can_use_services?).to eql true
    end
  end

  describe '#to_s' do
    it 'returns teacher info' do
      expect(@teacher.to_s).to be_kind_of String
    end
  end
end

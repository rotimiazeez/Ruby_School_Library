require 'minitest/autorun'
require_relative '../classroom'
describe 'Classroom' do
  before do
    @classroom = Classroom.new 'label'
  end
  context 'testing Classroom.label' do
    it 'label' do
      @classroom.label.eql? 'label'
    end
  end
end

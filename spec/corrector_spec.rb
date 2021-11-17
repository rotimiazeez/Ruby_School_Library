require 'minitest/autorun'
require_relative '../corrector'

describe Corrector do
  before :all do
    @corrector = Corrector.new
  end

  it 'corrector is the instance of Corrector class' do
    expect(@corrector).to be_instance_of Corrector
  end

  context 'with a name' do
    it 'corrected with the corrector method' do
      name = 'lewandowski'
      name = @corrector.correct_name(name)
      expect(name).to eql 'Lewandowsk'
      expect(name).to be_instance_of String
    end
  end
end

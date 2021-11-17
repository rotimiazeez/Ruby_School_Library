require 'minitest/autorun'

describe 'Corrector' do
  before do
    @corrector = Corrector.new
  end

  context 'when condition' do
    it 'capital letter' do
      capital = @corrector.correct_name('pedro slinme')
    end
  end
end
require 'minitest/autorun'
require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe Rental do
  before :each do
    @person1 = Person.new(21, 'Carlos')
    @person2 = Person.new(26, 'Azeez')

    @book1 = Book.new('THE TRAVELER', 'Hamza')
    @book2 = Book.new('GOOD MAN', 'Hero')

    @rental = Rental.new('2021/11/18', @person1, @book1)
  end

  it 'takes 3 parameters and returns a Rental object' do
    expect(@rental).to be_an_instance_of Rental
  end

  it 'should set the correct date' do
    expect(@rental.date).to eql '2021/11/18'
  end

  it 'should set the correct person' do
    expect(@rental.person).to eql @person1
  end

  it 'should set the correct book' do
    expect(@rental.book).to match @book1
  end

  it 'should have the correct rental' do
    expect(@person1.rentals).to include(@rental)
  end

  it 'should have the correct rental' do
    expect(@book1.rentals).to include(@rental)
  end
end

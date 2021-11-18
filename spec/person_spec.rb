require 'minitest/autorun'
require_relative '../person'
require_relative '../rental'
require_relative '../book'

describe Person do
  before :each do
    @person = Person.new(27, 'hamza', true)
  end

  it 'create a new person with a age, name' do
    expect(@person).to have_attributes(age: 27)
    expect(@person).to have_attributes(name: 'hamza')
    expect(@person).to have_attributes(parent_permission: true)
  end

  it 'should have no rentals in the beginning' do
    rentals_length = @person.rentals.length
    expect(rentals_length).to be 0
  end

  it 'have parent permission' do
    parent_permission = @person.parent_permission
    expect(parent_permission).to be true
  end

  it 'have a validate name' do
    name = @person.validate_name
    expect(name).to eq 'Hamza'
  end

  it 'can use the service' do
    can_use = @person.can_use_services?
    expect(can_use).to be true
  end

  it 'to string format' do
    person_phrase = @person.to_s
    to_string = "Name: hamza, ID: #{@person.id}, Age: 27"
    expect(person_phrase).to eql to_string
  end

  it 'have a book rental in rentals' do
    @book = Book.new('The Game', 'gamer')

    @person.add_rental('18-11-2021', @book)
    rentals_length = @person.rentals.length
    expect(rentals_length).not_to be 0
  end
end

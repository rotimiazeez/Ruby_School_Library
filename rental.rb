class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(date, person, book)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end

  def to_s
    "Date: #{@date}, Book \"#{book.title}\" by #{book.author}"
  end
end

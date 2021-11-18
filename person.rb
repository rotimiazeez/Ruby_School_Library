require_relative 'corrector'
require_relative 'rental'

class Person
  attr_accessor :name, :age, :rentals, :id
  attr_reader :corrector, :parent_permission

  DEFAULT_BOOL = true

  def initialize(age, name = 'Unknown', parent_permission = DEFAULT_BOOL)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def to_s
    "Name: #{@name}, ID: #{@id}, Age: #{@age}"
  end

  private

  def of_age?
    @age >= 18
  end
end

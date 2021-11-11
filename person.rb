
require 'corrector'
require 'rental'


class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id
  @@ -11,11 +13,13 @@ def initialize(age:, name: 'Unknown', parent_permission: true)
    @age = age
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
  private
  def of_age?
    @age >= 18
  end
end

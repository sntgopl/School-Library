require './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age, name = 'Unknown', parent_permission: true)
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age || @parent_permission
  end

  # decorator pattern
  def correct_name
    @name
  end

  private

  def of_age
    @age >= 18
  end
end

pe = Person.new(1, 18, 'Pepe', parent_permission: false)
puts pe.name
puts pe.age
puts pe.id
puts pe.send(:of_age)
puts pe.can_use_services?

person = Person.new(2, 22, 'maximilianus')
puts person.correct_name
CapitalizedPerson = CapitalizeDecorator.new(person)
puts CapitalizedPerson.correct_name
CapitalizedTrimmedPerson = TrimmerDecorator.new(CapitalizedPerson)
puts CapitalizedTrimmedPerson.correct_name

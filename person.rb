class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age
    @age >= 18
  end

  public

  def can_use_services?
    of_age || @parent_permission
  end
end

pe = Person.new(1, 18, 'Pepe', false)
puts pe.name
puts pe.age
puts pe.id
puts pe.of_age
puts pe.can_use_services?

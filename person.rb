class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age, name = "Unknown", parent_permission = true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age
    if @age >= 18
      true
    else
      false
    end
  end

  def can_use_services?
    if @parent_permission == true
        true
    else
        false
    end
  end
end

pe = Person.new(1, 18, "Pepe", false)
puts pe.name
puts pe.age
puts pe.id
puts pe.of_age
puts pe.can_use_services?
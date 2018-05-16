class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(nombre, raza, color)
    @nombre = nombre
    @raza = raza
  end
  def ladrar
    print " #{nombre} dice guau!"
  end

end

dog = Dog.new('Cachupin', 'Dobberman', 'negro')
puts dog.nombre
puts dog.ladrar

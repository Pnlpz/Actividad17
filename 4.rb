class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end

  def ladrar
    print " #{nombre} dice guau!"
  end

end
propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

dog = Dog.new(propiedades)
puts dog.nombre
puts dog.ladrar
print dog


class Product
  def initialize(name, large, medium, small, xsmall)
  @name = name
  @large = large
  @medium = medium
  @small = small
  @xsmall = xsmall
  end

  def avg
  (@large + @medium + @small + @xsmall) / 4
  end
end

 products_list = []
 data = []
 File.open('catalogo.txt', 'r') { |file| data = file.readlines}
 data.each do |prod|
   ls = prod.split(', ')
   products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
 end
  print products_list



# Optimizar el código implementando el operador splat al momento de
# instanciar los productos
# Generar un método que permita calcular el promedio de precio por producto.

class Product
  def initialize(name, large, medium, small, xsmall)
  @name = name
  @large = large
  @medium = medium
  @small = small
  @xsmall = xsmall
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


# La tienda desea generar un nuevo catálogo que no incluya el último
# precio correspondiente a cada producto debido a que ya no
# comercializa productos de talla XS.
# Se pide generar un método que reciba como argumento los datos del
# archivo catalogo.txt y luego imprima el nuevo catálogo solicitado
# en un archivo llamado nuevo_catalogo.txt

class Product
  attr_accessor :name, :sizes

  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map(&:to_i)
  end

  def self.new_catalogue(products_list)
    arr = []
    products_list.each do |product|
      a = "#{product.name}, "
      product.sizes.each do |size|
        unless size == product.sizes.last
          a += ", #{size}"
        end
      end
      arr << a
    end
File.open('new_catalogue.txt', 'w') do |f|
arr.each { |x| f.puts x }
end

  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r'){ |file| data = file.readlines }
data.each do |prod|
ls = prod.split(', ')
name = ls.shift
products_list << Product.new(name, *ls)
end


Product.new_catalogue(products_list)

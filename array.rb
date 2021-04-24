# -----------
# EJERCICIO 1
# -----------

# Inicializo un arreglo vacio
array = [] 
# Inicio un loop para que el usuario ingrese numeros 
# si ingresa un 0 el loop se rompe
loop do
  print "Ingresa un numero (0 para finalizar):"
  n = gets.to_i
  if n == 0
    break
  end
# Agrego el numero ingresado al arreglo
  array << n
end

puts ""
# Solicito el numero resultado
print "Ingresa un numero objetivo:"
target = gets.to_i

puts ""
# Muestro todos los valores ingresados
puts "El tamano del arreglo es igual a: #{array.length}"
puts ""
puts "Los elementos del arreglo son: #{array}"
puts "" 
puts "El numero objetivo ingresado fue: #{target}"
puts ""
# ------------------------------------------------------
# ------------------------------------------------------


# Esto encontrara toda la combinacion de dos elementos que sumen target 
result = (0...array.size).to_a.combination(2).select { |x, y| array[x] + array[y] == target }
result.each do |value|
  puts "Los indices son: #{value}"
end



# 
# def two_sum (array, target)
#     length = array.length 
#     for i in 0..length
#         j = i+1 
#         for a in j..length
#           if j < length
#             if array[i] + array[a] == target
#                return [i, a]       
#            end
#           end
#           j+=1
#         end
#     end
# end

# result = two_sum(array, target)
# puts "Los indices de los pares que suman #{target} son: #{result}" 


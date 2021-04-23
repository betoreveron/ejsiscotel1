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

# Metodo que recibe dos argumentos: el arreglo y la suma objetivo
def two_sum (array, target)
    # tamano del arreglo
    length = array.length
    # primer ciclo 
    for i in 0..length
        # incializo un contador
        j = i+1 
        # segundo ciclo
        for a in j..length
          if j < length
            # Condicion para saber si sumar 2 pares es igual a target
            if array[i] + array[a] == target
               return [i, a]       
           end
          end
          j+=1
        end
    end
end

# invoco el metodo two_sum y le paso los argumentos
result = two_sum(array, target)
puts "Los indices de los pares que suman #{target} son: #{result}" 


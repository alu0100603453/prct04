#Practica 04 de LPP
#Autores: Francisco J. Alderete González
#        Néstor Álvarez Díaz

#FUNCION LLENAR MATRIZ RANDOM
def rand_matriz(d)
	m = Array.new(d){|i| nil}
	cont = 0
	while(cont < d)
		p_rand = Random.new()
		m[cont] = Array.new(d){|j| p_rand.rand(9)}
		cont = cont + 1
	end
	m
end

#FUNCION MOSTRAR
def mostrar(m)
	c_fil = 0
	while(c_fil < m.length)
		puts "#{m[c_fil]} "
		c_fil = c_fil + 1
	end
	puts
end

#FUNCION SUMA
def op_suma(a,b)
	result=Array.new(a.length){Array.new(b.length)}
	i = 0
	j = 0
	while i < a.length
		j = 0
		while j < b.length
			result[i][j] = a[i][j] + b[i][j]
			j += 1
		end
		i += 1
	end
	return result
	
end
#___________

#FUNCION MULTIPLICACION
def op_multi(a,b)
	result=Array.new(a.length){Array.new(b.length){|i| 0}}
	fil = 0
	col = 0
	x_col = 0
	while(fil < a.length)
		x_col = 0
		while(x_col < b.length)
			aux = 0
			col = 0
			while(col < a.length)
				result[fil][col] += (a[fil][col] * b[col][x_col])
				col += 1
			end
			x_col += 1
		end
		fil += 1
	end
	result
end
#_____________________

#_MENU
intro = true
while intro == true
	puts "Que desea hacer Sumar(1) o Restar(2)?"
	STDOUT.flush
	op=gets.chomp
	if op == "1"
		op="suma"
		intro=false
	elsif op == "2"
		op="multiplicacion"
		intro=false
	else
		puts "Entrada erronea..."
	end
end
#________________

#_Recogida de datos
puts "Indique el orden de las matrices CUADRADAS"
STDOUT.flush
orden=gets.chomp

matrix1 = rand_matriz(orden.to_i)
matrix2 = rand_matriz(orden.to_i)

puts "La matriz A es: "
mostrar(matrix1)

puts "La matriz B es: "
mostrar(matrix2)

if op=="suma"
	resu=op_suma(matrix1,matrix2)
	puts "La matriz resultante es: "
	mostrar(resu)
elsif op=="multiplicacion"
	resu=op_multi(matrix1,matrix2)
	puts "La matriz resultante es: "
	mostrar(resu)
end

#Pacica 04 de LPP
#Autores: Francisco J. Alderete González
#        Nestor Alvarez Diaz

#FUNCION LLENAR MATRIZ RANDOM
def rand_matriz(d)
	m = Array.new(d){|i| nil}
	cont = 0
	while(cont < d)
		p_rand = Random.new()
		m[cont] = Array.new(d){|j| p_rand.rand(4)}
		cont = cont + 1
	end
	m
end

#FUNCION MOSTRAR
def mostrar(m)
	c_fil = 0
	while(c_fil < m.length)
		print "#{m[c_fil]} "
		puts
		c_fil = c_fil + 1
	end
	puts
end

#FUNCION SUMA
def op_suma(matrix1,matrix2,orden)
	result=[]
	i=0
	while i < orden*2
		result[i]=matrix1[i].to_i + matrix2[i].to_i
		i=i+1
	end
	return result
	
end
#___________

#FUNCION MULTIPLICACION
def op_multi(maxtrix1,matrix2,orde)
end
#_____________________

#_MENU
intro = true
while intro == true
	puts "¿Qué desea hacer Sumar(1) o Restar(2)?"
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
puts "Introduzca la 1º matiz cuadrada de orden #{orden} para la #{op}"
STDOUT.flush
matrix1 = []
matrix2 = []
i=0
value=0
while i < orden.to_i
	j=0
	while j < orden.to_i
		puts "Valor [#{i},#{j}]"
		matrix1[value]=gets.chomp
		value=value+1
		j=j+1
	end
	i=i+1
end
puts "Introduzca la 2º matiz cuadrada de orden #{orden} para la #{op}"
STDOUT.flush
i=0
value=0
while i < orden.to_i
	j=0
	while j < orden.to_i
                puts "Valor [#{i},#{j}]"
        	matrix2[value]=gets.chomp
		value=value+1
		j=j+1
	end
	i=i+1
end
#_____

if op=="suma"
	resu=op_suma(matrix1,matrix2,orden.to_i)
	puts "La matriz resultante es: "
	mostrar(resu,orden.to_i)
elsif op=="miltiplicacion"
	op_multi(matrix1,matrix2,orden.to_i)
end

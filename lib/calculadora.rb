def sumarNumeros(array)
    sum = 0
    array.each do |j|
        if j.to_i <= 1000
            sum += j.to_i
        end
    end
    return sum
end
def calcularCadena(cadena)
    if(!(cadena.match("//"))) #si la cadena no coincide con el caracter "//"
        cadenaNumeros = cadena.gsub("\n",",").split(",")
    else
        delimitadores = obtenerDelimitadores(cadena)
        numeros = cadena.split("\n")[1]
        delimitadores.each do |i|
            numeros = numeros.tr(i,",")
        end
        cadenaNumeros = numeros.split(",")
    end
    return sumarNumeros(cadenaNumeros)
end
 
def obtenerDelimitadores(cadena)
    ((((cadena.split("\n")[0]).gsub "/","").gsub "[","").gsub "]",",").split(",")
end

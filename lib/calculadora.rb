def calcularCadena(cadena)
    if(!(cadena.match("//"))) #si la cadena no coincide con el caracter "//"
        cadenaNumeros = cadena.gsub("\n",",").split(",")
    else
        delimitadores = obtenerDelimitadores(cadena)
        cadenaNumeros = obtenerNumeros(cadena,delimitadores)
    end
    return sumarNumeros(cadenaNumeros)
end

def sumarNumeros(array)
    sum = 0
    array.each do |j|
        if j.to_i <= 1000
            sum += j.to_i
        end
    end
    return sum
end

def obtenerDelimitadores(cadena)
    ((((cadena.split("\n")[0]).gsub "/","").gsub "[","").gsub "]",",").split(",")
end

def obtenerNumeros(cadena,delimitadores)
    numeros = cadena.split("\n")[1]
    delimitadores.each do |i|
        numeros = numeros.tr(i,",")
    end
    return numeros.split(",")
end
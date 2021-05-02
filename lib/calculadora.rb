def sumar_numeros(array)
    sum = 0
    array.each do |j|
        if j.to_i <= 1000
            sum += j.to_i
        end
    end
    return sum
end
def reducir_cadena(cad,caracter)
    return cad.split(caracter).join("")
end
def calcularCadena(cad)
    caracteres_borrar = ["//", "["]
    if(!(cad.match("//")))
        tmp = cad.gsub("\n",",").split(",")
    else
        #//[#][%][)]\n5#9%3)100
        tmp_left = ((((cad.split("\n")[0]).gsub "/","").gsub "[","").gsub "]",",").split(",")
        return tmp_left
        # tmp_right = cad.split("\n")[1]
        # tmp_left.each do |i|
        #     tmp_right = tmp_right.tr(i,",")
        # end
        # tmp = tmp_right.split(",")
    end
    return sumar_numeros(tmp)
end
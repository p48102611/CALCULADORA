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
    caracteres_borrar = ["//", "[", "]"]
    if(cad[1] != "/")
        tmp = cad.gsub("\n",",").split(",")
        return sumar_numeros(tmp)
    else
        tmp = cad.split("\n")
        tmp_left = tmp[0]
        caracteres_borrar.each do |i|
            tmp_left = tmp_left.gsub(i,"")
        end

        if(tmp_left.length == 1)
            tmp_right = tmp[1].split(tmp_left)
        else
            tmp_left.each do |j|
                tmp_right = tmp_right.gsub(j,",")
            end
            tmp_right = tmp_right.split(",")
        end
        return sumar_numeros(tmp_right)
    end
end
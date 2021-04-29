def sumar_numeros(array)
    sum = 0
    array.each do |j|
        sum += j.to_i
    end
    return sum
end
def calcularCadena(cad)

    if(cad[1] != "/")
        tmp = cad.gsub("\n",",").split(",")
        return sumar_numeros(tmp)
    else
        tmp = cad.split("\n")
        tmp_left = tmp[0]
        tmp_right = tmp[1].split(";")
        return sumar_numeros(tmp_right)
    end
    # tmp = ""
    # array_num = [0]
    # cad.each do |j|
    #     if j.to_i >= 0 && j.to_i <= 9
    #         tmp.join(j)
    #     else
    #         array_num.insert(tmp.to_i)
    #         tmp = ""
    #     end
    # end
    # return sum(array_num)
end
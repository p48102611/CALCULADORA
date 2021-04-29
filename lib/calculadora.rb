def calcularCadena(cad)

    tmp = cad.split(',')
    sum = 0
    tmp.each do |j|
        sum += j.to_i 
    end
    return sum
end
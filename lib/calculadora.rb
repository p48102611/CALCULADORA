def calcularCadena(cad)
    tmp = cad.gsub("\n",",").split(",")
    sum = 0
    tmp.each do |j|
        sum += j.to_i
    end
    return sum
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
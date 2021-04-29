require './lib/calculadora.rb'
RSpec.describe "calculadora" do
  it "deberia devolver el numero 3 para la cadena '3'" do
    expect(calcularCadena("3")).to eq 3
  end
  it "deberia devolver el numero 5 para la cadena '5'" do
    expect(calcularCadena("5")).to eq 5
  end
  it "deberia devolver el numero 6 para la cadena '5,1'" do
    expect(calcularCadena("5,1")).to eq 6
  end
  it "deberia devolver el numero 9 para la cadena '5,1,3'" do
    expect(calcularCadena("5,1,3")).to eq 9
  end
  it "deberia devolver el numero 9 para la cadena '5,1,3,1'" do
    expect(calcularCadena("5,1,3,1")).to eq 10
  end
  it "deberia devolver el numero 16 para la cadena '5,1,3\n10'" do
    expect(calcularCadena("5,1\n10")).to eq 16
  end
  it "deberia devolver el numero 9 para la cadena '5,1\n3'" do
    expect(calcularCadena("5,1\n3")).to eq 9
  end
  it "deberia devolver el numero 108 para la cadena '5,100\n3'" do
    expect(calcularCadena("5,100\n3")).to eq 108
  end
  it "deberia devolver el numero 109 para la cadena '5,100\n3,1'" do
    expect(calcularCadena("5,100\n3,1")).to eq 109
  end
  it "deberia devolver el numero 109 para la cadena '5,100\n3,10'" do
    expect(calcularCadena("5,100,3,10")).to eq 118
  end
  it "deberia devolver el numero 18 para la cadena '5,1001,3,10'" do
    expect(calcularCadena("5,1001,3,10")).to eq 18
  end
  it "deberia devolver el numero 109 para la cadena '//[;]\n5;100;3;1'" do
    expect(calcularCadena("//[;]\n5;100;3;1")).to eq 109
  end
end

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
  it "deberia devolver el numero 6 para la cadena '5,1,3'" do
    expect(calcularCadena("5,1,3")).to eq 9
  end
end

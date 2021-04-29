require './lib/calculadora.rb'
RSpec.describe "calculadora" do
  it "deberia devolver el numero 3" do
    expect(calcularCadena("3")).to eq 3
  end
end

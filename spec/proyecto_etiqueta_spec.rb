require 'proyecto_etiqueta.rb'

RSpec.describe ProyectoEtiqueta do
# Nombre, Valor, Grasas, Grasa saturadas, Hidratos, Azucares, Proteinas, Sal.
#  it "has a version number" do
#    expect(ProyectoEtiqueta::VERSION).not_to be nil
#  end

#  it "does something useful" do
#    expect(false).to eq(true)
#  end
	before :each do
		@eti1 = Etiqueta.new("carne",100,20,10,30,5,30,2)
	end

	describe ProyectoEtiqueta, "# almacenamos los nutrientes" do
                it "El nombre es el correcto" do
                        expect(@eti1.nombre).to eq("carne")
                end
		it "El valor energetico inicializado es correcto"do
                        expect(@eti1.valor).to eq(100)
                end

                it "Las grasas se inicializaron de forma correcta" do
                        expect(@eti1.grasas).to eq(20)
                end

                it "Las grasas saturadas se inicializaron de forma correcta" do
                        expect(@eti1.saturadas).to eq(10)
                end

                it "Los hidratos se inicializaron de forma correcta" do
                        expect(@eti1.hidratos).to eq(30)
                end

                it "Los azucares se inicializaron de forma correcta" do
                        expect(@eti1.azucares).to eq(5)
                end

                it "Las proteinas se inicializaron de forma correcta" do
                        expect(@eti1.proteinas).to eq(30)
                end

                it "La sal se inicializo de forma correcta" do
                        expect(@eti1.sal).to eq(2)
                end

	end


	
end

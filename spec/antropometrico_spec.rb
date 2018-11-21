


RSpec.describe ProyectoEtiqueta do
        before :each do
		@l = Lista.new(nil,nil)
	end

	describe "# Pruebas para la clase lista"do
                it "La lista esta vacia"do
                        expect(@l.vacio?).to eq(true)
                end
                it"@l es un objeto de la clase Lista"do
                        expect(@l.class).to eq(Lista)
                end
                it"@l es una instancia de lista" do
                        expect(@l.instance_of? Lista).to eq(true)
                end
                it"@l es un objeto de la clase Lista e hija de Object" do
                        expect(@l.is_a? Lista).to eq(true)
                        expect(@l.is_a? Object).to eq(true)
                end
                it"@l puede usar el metodo vacio?" do
                        expect(@l.respond_to?('vacio?')).to eq(true)
                end
        end

end


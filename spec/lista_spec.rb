require 'proyecto_etiqueta/etiqueta.rb'
require 'proyecto_etiqueta/lista.rb'


RSpec.describe ProyectoEtiqueta do
    before :each do
        @n1 = Node.new(1,NIL,NIL)
        @n2 = Node.new(2,NIL,NIL)
	@n3 = Node.new(3,NIL,NIL)
	@l =Lista.new(NIL,NIL)
    end

    describe "# Pruebas de la lista" do
        it "Inserto Un elemento por la cola" do
            @l.insert_tail(@n1)
	    @l.insert_tail(@n2)
            expect(@l.tail.value).to eq(2)
            #expect(@eti1.nombre).to eq("carne")
        end
	it "Inserto un elemento por la cabeza" do
		@l.insert_head(@n2)
		@l.insert_head(@n3)
		expect(@l.head.value).to eq(3)
	end

    end

end

require 'proyecto_etiqueta/etiqueta.rb'
require 'proyecto_etiqueta/lista.rb'


RSpec.describe ProyectoEtiqueta do
    before :each do
        @n1 = Node.new(1,nil,nil)
        @n2 = Node.new(2,nil,nil)
	@n3 = Node.new(3,nil,nil)
	@l =Lista.new(nil,nil)

	@et1=Etiqueta.new("carne",10.0,15.0,25.0,30.0,5.0,20.0,17.0,15.0,30.0,2.0,5,200,1000)
	@et2=Etiqueta.new("alimento2",2,2,2,2,2,2,2,2,2,2,3,100,300)
	@et3=Etiqueta.new("alimento3",2,2,2,2,2,2,2,5,5,5,3,100,300)
	@et4=Etiqueta.new("alimento4",2,2,2,2,2,2,2,6,6,6,3,100,300)
	@et5=Etiqueta.new("alimento5",2,2,2,2,2,2,2,7,7,7,3,100,300)
	@nd1= Node.new(@et1,nil,nil)
	@nd2= Node.new(@et2,nil,nil)
	@nd3= Node.new(@et3,nil,nil)
	@nd4= Node.new(@et4,nil,nil)
	@nd5= Node.new(@et5,nil,nil)

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

	it "Extraigo un elemento de la cabeza" do
            	@l.insert_tail(@n1)
            	@l.insert_tail(@n2)
            	@l.extract_head()
            	expect(@l.head.value).to eq(2)
        end
	it "Extraigo un elemento de la cola" do
		@l.insert_tail(@n3)
		@l.insert_tail(@n1)
		@l.extract_tail()
		expect(@l.tail.value).to eq(3)
	end

	it "Compruebo si la lista esta vacia" do
		@l.insert_tail(@n1)
		@l.extract_head()
		expect(@l.vacio?).to eq(true)
	end

	it "Compruebo el to_s" do
		@l.insert_tail(@n3)
		@l.insert_tail(@n2)
                @l.insert_tail(@n1)
		expect(@l.to_s).to eq("([3]-[2]-[1])")
	end

    end


    describe "# Pruebo la lista con los alimentos" do
	it "Los conjuntos son correctos" do
		conjunto_mayor = []
		conjunto_menor = []

		@l.insert_tail(@nd1)
		@l.insert_tail(@nd2)
		@l.insert_tail(@nd3)
		@l.insert_tail(@nd4)
		@l.insert_tail(@nd5)
		#@l.insert_tail(@n1)

		while !@l.vacio? do
			aux = @l.extract_head
			if(aux.value.sal<6)
				conjunto_menor << aux.value
			else
				conjunto_mayor << aux.value
			end
		end
		expect(conjunto_mayor.length).to eq(2)
		expect(conjunto_menor.length).to eq(3)
	end




    end


    

end

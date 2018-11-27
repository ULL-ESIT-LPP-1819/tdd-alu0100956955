require 'proyecto_etiqueta/individuo.rb'
require 'proyecto_etiqueta/antropometrico.rb'


RSpec.describe ProyectoEtiqueta do
        before :each do
		@l = Lista.new(nil,nil)
		@et1=Etiqueta.new("carne",10.0,15.0,25.0,30.0,5.0,20.0,17.0,15.0,30.0,2.0,5,200,1000)
		@a1=Antropometrico.new(18,1,69,1.6,69,68)
		@a2=Antropometrico.new(23,0,80,1.75,84,74)
                @a3=Antropometrico.new(24,0,60,1.4,75,75)
                @a4=Antropometrico.new(25,0,75,1.90,56,50)
                @a5=Antropometrico.new(69,1,110,2.0,75,75)

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

	 describe "# Pruebas para la clase Etiqueta" do
                it "@et1 es un objeto de la clase Etiqueta" do
                        expect(@et1.class).to eq(Etiqueta)
                end
                it "@et1 es una instancia de Etiqueta" do
                        expect(@et1.instance_of? Etiqueta).to eq(true)
                end
                it "@et1 es un objeto de la clase Etiqueta e hija de Object" do
                        expect(@et1.is_a? Etiqueta).to eq(true)
                        expect(@et1.is_a? Object).to eq(true)
                end
                it "@et1 puede usar el metodo asignar_nombre" do
                        expect(@et1.respond_to?('asignar_nombre')).to eq(true)
                end
        end
	
	 describe "# Pruebas para la clase Antropometrico" do
                it "@a1 es un objeto de la clase Antropometrico" do
                        expect(@a1.class).to eq(Antropometrico)
                end
                it "@a1 es una instancia de Antropometrico" do
                        expect(@a1.instance_of? Antropometrico).to eq(true)
                end
                it "@a1 es un objeto de la clase Antropometrico e hija de Individuo" do
                        expect(@a1.is_a? Antropometrico).to eq(true)
                        expect(@a1.is_a? Individuo).to eq(true)
                end
                it "@a1 puede usar el metodo IMC" do
                        expect(@a1.respond_to?('IMC')).to eq(true)
                end

		it "@a1 puede usar el metodo to_s" do
			expect(@a1.to_s()).to eq()
		end
        end

	 describe "# Lista con 5 pacientes" do
		it"Los parametros de los pacientes estan dentro de lo establecido"do
			@l.insert_tail(@a1)
			@l.insert_tail(@a2)
       			@l.insert_tail(@a3)
       			@l.insert_tail(@a4)
       			@l.insert_tail(@a5)

                        aux =@l.extract_head()	# Primer paciente
			expect(aux.value.IMC).to be>(25)

			aux= @l.extract_head()	# Segundo paciente
			expect(aux.value.IMC).to be>(26)

			aux= @l.extract_head()	# Tercer paciente
			expect(aux.value.IMC).to be>(27)

			aux= @l.extract_head()	# Cuarto paciente
			expect(aux.value.IMC).to be>(20)

			aux= @l.extract_head()	# Quinto paciente
			expect(aux.value.IMC).to be<(29)
                end

        end


end


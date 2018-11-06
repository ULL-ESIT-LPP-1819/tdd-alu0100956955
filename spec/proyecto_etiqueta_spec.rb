require 'proyecto_etiqueta.rb'

RSpec.describe ProyectoEtiqueta do
#  it "has a version number" do
#    expect(ProyectoEtiqueta::VERSION).not_to be nil
#  end

#  it "does something useful" do
#    expect(false).to eq(true)
#  end

# Nombre, Valor, Grasas, Grasa saturadas, Hidratos, Azucares, Proteinas, Sal.
# Cantidad de prociones , Cantidad en gramos de una porcion)	
	before :each do
		@eti1 = Etiqueta.new("carne",20.0,10,30,5,30,2,5,200,1000)
	end

	describe "# almacenamos los nutrientes" do
                it "El nombre es el correcto" do
                        expect(@eti1.nombre).to eq("carne")
                end
		it "El valor energetico en Kj calculado es correcto"do
                        expect(@eti1.valorKj).to eq(2230)
                end
		it "El valor energetico en Kcal calculado es correcto" do
			expect(@eti1.valorKcal).to eq(534)
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
		
		it "La cantidad de porciones se inicializo de forma correcta" do
			expect(@eti1.porciones).to eq(5)
		end

		it "La cantidad de gramos por porcion se inicializo de forma correcta" do
			expect(@eti1.gramos_porciones).to eq(200)
		end

	end

	# Pruebas para los nombres
	describe "# Comprobamos que podemos asignar y ver el nombre de la etiqueta" do
                it "El nombre de la etiqueta es correcto" do
                        @eti1.asignar_nombre("pescado")
                        expect(@eti1.nombre).to eq("pescado")
                end
        end

	# Pruebas para el valor nutricional
	describe "# Comprobamos que podemos asignar y ver el valor nutricional" do
                it "El valor energetico en KJ almacenado es correcto" do
                        @eti1.asignar_valorKj(2000)
                        expect(@eti1.valorKj).to eq(2000)
                end
		it "El valor energetico en Kcal almacenado es correcto" do
			@eti1.asignar_valorKcal(500)
			expect(@eti1.valorKcal).to eq(500)
		end
        end

	# Pruebas para las grasas
	describe "# Comprobamos que podemos asignar y ver las grasas" do
                it "Las grasas almacenadas son correctas" do
                        @eti1.asignar_grasas(30)
                        expect(@eti1.grasas).to eq(30)
                end
		it "La fila de grasas es correcta" do
			expect(@eti1.get_grasas).to eq("| 20.0 | 2.0 | 2.9% | 4.0 | 5.7 |")
		end
        end

	# Pruebas para las grasas saturadas
	describe "# Comprobamos que podemos asignar y ver las grasas Saturadas" do
                it "Las grasas Saturadas almacenadas son correctas" do
                        @eti1.asignar_saturadas(20)
                        expect(@eti1.saturadas).to eq(20)
                end


        end

	# Pruebas para los hidratos
	describe "# Comprobamos que podemos asignar y ver los hidratos" do
                it "Los hidratos son correctas" do
                        @eti1.asignar_hidratos(40)
                        expect(@eti1.hidratos).to eq(40)
                end
        end

	# Pruebas para los azucares
	describe "# Comprobamos que podemos asignar y ver los Azucares" do
                it "Los azucares son correctas" do
                        @eti1.asignar_azucares(10)
                        expect(@eti1.azucares).to eq(10)
                end
        end

	# Prueba para las proteinas
	describe "# Comprobamos que podemos asignar y ver las proteinas" do
                it "Las proteinas son correctas" do
                        @eti1.asignar_proteinas(40)
                        expect(@eti1.proteinas).to eq(40)
                end
        end

	# Pruebas para la sal
	describe "# Comprobamos que podemos asignar y ver la sal" do
                it "La sal es correcta" do
                        @eti1.asignar_sal(3)
                        expect(@eti1.sal).to eq(3)
                end
        end





	
end

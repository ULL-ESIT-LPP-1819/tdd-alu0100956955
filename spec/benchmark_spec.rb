require 'benchmark'
require "proyecto_etiqueta/antropometrico.rb"

RSpec.describe ProyectoEtiqueta do
	before :each do

		# Etiquetas
                @et1=Etiqueta.new("carne",16.0,15.0,25.0,30.0,5.0,20.0,17.0,15.0,30.0,2.0,1,200,200)
                @et2=Etiqueta.new("Salmon",23.0,16.0,30.0,32.0,6.0,24.0,16.0,15.0,33.0,2.5,1,200,200)
                @et3=Etiqueta.new("hamburguesa",37.0,20.0,32.0,40.0,7.0,32.0,17.0,20.0,34.0,3.0,1,200,200)
                @et4=Etiqueta.new("galletas",5.0,3.0,10.0,15.0,4.0,9.0,12.0,6.0,15.0,0.5,1,100,100)
                @et5=Etiqueta.new("pasta",30.0,10.0,22.0,10.0,6.0,16.0,17.0,10.0,14.0,1.0,1,200,200)
                @et6=Etiqueta.new("arroz",5.0,3.0,8.0,5.0,4.0,9.0,2.0,6.0,5.0,0.5,1,100,100)
                @et7=Etiqueta.new("pato",9.0,12.0,23.0,27.0,4.0,17.0,12.0,12.0,22.0,1.5,1,150,150)

		
		#individuos
		@ant1=Antropometrico.new(18,1,40,1.6,69,68,0.12)
                @ant2=Antropometrico.new(24,0,60,1.9,75,75,0.27)
                @ant3=Antropometrico.new(69,1,109.77,2.0,75,75,0.54)
                @ant4=Antropometrico.new(24,0,60,1.4,75,75,0.0)
                @ant5=Antropometrico.new(25,0,75,1.9,56,50,0.12)


		@array_etiquetas = [@et3,@et2,@et1,@et5,@et4,@et7,@et6]

		@lista_individuos = Lista.new(nil,nil)


	end

	describe "# Pruebas con el ARRAY" do
		it " El Benchmark muestra correctamente los resultados" do
			Benchmark.bm do |x|
				x.report("for:") {@array_etiquetas.ordernar_for }
				x.report("sort:") { @array_etiquetas.sort }
			end
		end
		it "Se ordena de forma correcta con el FOR" do
			expect(@array_etiquetas.ordenar_for).to eq([@et1,@et2,@et3,@et4,@et5,@et6,@et7]
		end
		it "Se ordena de forma correcta con el SORT" do
	                expect(@array_etiquetas.sort).to eq([@et1,@et2,@et3,@et4,@et5,@et6,@et7)
		end
		
	end


end





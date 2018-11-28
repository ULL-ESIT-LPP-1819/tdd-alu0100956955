require 'proyecto_etiqueta/individuo.rb'
require 'proyecto_etiqueta/antropometrico.rb'



RSpec.describe ProyectoEtiqueta do
	before :each do
		@et1=Etiqueta.new("carne",10.0,15.0,25.0,30.0,5.0,20.0,17.0,15.0,30.0,2.0,5,200,1000)
		@et2=Etiqueta.new("Salmon",20.0,15.0,30.0,32.0,6.0,24.0,16.0,15.0,33.0,2.5,5,200,1000)
		@et3=Etiqueta.new("hamburgesa",30.0,20.0,32.0,40.0,7.0,32.0,17.0,20.0,34.0,3.0,5,200,1000)
	end

	describe "# Pruebas de los metodos comparables en la clase etiqueta" do
		it "la etiqueta 1 tiene menos kcal que la etiqueta 2" do
			expect(@et1<@et2).to eq(true)
		end
		it "la etiqueta 3 tiene mas Kcal que la etiqueta 3"do
			expect(@et3>@et2).to eq(true)
		end
		it "la etiqueta 2 tiene menos o la misma cantidad de Kcal que la 3" do
			expect(@et2<=@et3).to eq(true)
		end
		it "la etiqueta 3 tiene mas o la misma cantidad de Kcal que la 1" do
			expect(@et3>=@et1).to eq(true)
		end
		it "La etiqueta 2 esta entre la 1 y la 3" do
			expect(@et2.between?(@et1,@et3)).to eq(true)
		end
	end

	describe "# Pruebas de los metodos comparables en la clase individuo" do
		it "El individuo 1 tiene menor IMC que el 2" do
			expect(@ant1<@ant2).to eq(true)
		end
		it "El individuo 3 tiene mayor IMC que el 2" do
                        expect(@ant3>@ant2).to eq(true)
                end
		it "El individuo 2 tiene menor o igual IMC que el 3" do
                        expect(@ant2<@ant3).to eq(true)
                end
                it "El individuo 3 tiene mayor o igual IMC que el 2" do
                        expect(@ant3>@ant2).to eq(true)
                end
		it "El individo 2 se encuentra entre el individuo 1 y 3" do
			expect(@ant2.between?(@ant1,@ant3)).to eq(true)
		end
	end



end

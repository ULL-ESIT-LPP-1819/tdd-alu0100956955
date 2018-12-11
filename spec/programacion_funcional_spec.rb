

RSpec.describe ProyectoEtiqueta do
	before :each do
		@ant1=Antropometrico.new(18,1,40,1.6,69,68,0.12)
		@ant2=Antropometrico.new(24,0,60,1.9,75,75,0.27)
		@ant3=Antropometrico.new(69,1,110,2.0,75,75,0.54)
	end

	describe "# Prueba de gasto energetico total"do
		it"El primer individuo cumple con el gasto energetico total"do
			expect(@ant1.gasto_energetico_total).to eq(1604.3)
		end

		it"El segundo individuo cumple con el gasto energetico total" do
			expect(@ant2.gasto_energetico_total).to eq(2063.905)
		end

	end

end




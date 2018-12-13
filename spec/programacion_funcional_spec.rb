

RSpec.describe ProyectoEtiqueta do
	before :each do
		@ant1=Antropometrico.new(18,1,40,1.6,69,68,0.12)
		@ant2=Antropometrico.new(24,0,60,1.9,75,75,0.27)
		@ant3=Antropometrico.new(69,1,109.77,2.0,75,75,0.54)
		@ant4=Antropometrico.new(24,0,60,1.4,75,75,0.0)
		@ant5=Antropometrico.new(25,0,75,1.9,56,50,0.12)
		
		# Etiquetas
		@et1=Etiqueta.new("carne",16.0,15.0,25.0,30.0,5.0,20.0,17.0,15.0,30.0,2.0,1,200,200)
                @et2=Etiqueta.new("Salmon",23.0,16.0,30.0,32.0,6.0,24.0,16.0,15.0,33.0,2.5,1,200,200)
	 	@et3=Etiqueta.new("hamburguesa",37.0,20.0,32.0,40.0,7.0,32.0,17.0,20.0,34.0,3.0,1,200,200)
		@et4=Etiqueta.new("galletas",5.0,3.0,10.0,15.0,4.0,9.0,12.0,6.0,15.0,0.5,1,100,100)
		@et5=Etiqueta.new("pasta",30.0,10.0,22.0,10.0,6.0,16.0,17.0,10.0,14.0,1.0,1,200,200)
		@et6=Etiqueta.new("arroz",5.0,3.0,8.0,5.0,4.0,9.0,2.0,6.0,5.0,0.5,1,100,100)
		@et7=Etiqueta.new("pato",9.0,12.0,23.0,27.0,4.0,17.0,12.0,12.0,22.0,1.5,1,150,150)
		@et8=Etiqueta.new("agua",0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,1,10,10)
		@et9=Etiqueta.new("soja",3.0,5.0,6.0,10.0,1.0,6.0,8.0,3.0,2.0,1.0,1,100,100)
		# menus
		#@menu1 = [@et1.valorKcal,@et2.valorKcal,@et3.valorKcal] 
		@menu1 = [@et1,@et2,@et3]
		@menu2 = [@et7,@et6,@et5]
		@menu3 = [@et8,@et4,@et7,@et2]
		@menu4 = [@et9,@et8,@et7]
		@menu5 = [@et1,@et7,@et8,@et6]

		#valor auxiliar
		@valor =0

	end

	describe "# Prueba de gasto energetico total"do
		it"El primer individuo cumple con el gasto energetico total"do
			expect(@ant1.gasto_energetico_total).to eq(1604.3)
		end

		it"El segundo individuo cumple con el gasto energetico total" do
			expect(@ant2.gasto_energetico_total).to eq(2063.905)
		end

		it"El tercer individuo cumple con el gasto energetico total"do
			expect(@ant3.gasto_energetico_total.round(1)).to eq(3292.6)
		end

		it"El segundo individuo cumple con el gasto energetico total" do
			expect(@ant4.gasto_energetico_total).to eq(1313.4)
		end
		it"El tercer individuo cumple con el gasto energetico total"do
			expect(@ant5.gasto_energetico_total.round(2)).to eq(2014.83)
		end

	end

	describe "# Prueba de los menus" do
		it "Al tercer individuo le viene bien el primer menu" do
			#expect(@menu1.reduce('+')).to eq(3139.6)
			#expect(@menu1.reduce('+').valorKcal).to eq(@ant3.gasto_energetico_total.round(1))
			@menu1.collect{|i| @valor = @valor + i.valorKcal}
			expect(@valor).to eq(@ant3.gasto_energetico_total.round(1))
		end
		it "Al primer individuo le viene bien el segundo menu" do
			@menu2.collect{|i| @valor = @valor + i.valorKcal}
			expect(@ant1.gasto_energetico_total).to be_within(@valor*0.9).of(@valor*1.1)
		end
		it"Al segundo individuo le viene bien el tercer menu" do
			#@valor = @menu3.inject{|res,x| res + x.valorKcal}
			@menu3.collect{|i| @valor = @valor + i.valorKcal}
			expect(@ant2.gasto_energetico_total).to be_within(@valor*0.9).of(@valor*1.1)

		end
		it"Al cuarto indivio le viene bien el cuarto menu" do
			@menu4.collect{|i| @valor = @valor + i.valorKcal}
			expect(@ant4.gasto_energetico_total).to be_within(@valor*0.9).of(@valor*1.1)
		end
		it"Al quinto individuo le viene bien el quinto menu" do
			@menu5.collect{|i| @valor = @valor +i.valorKcal}
			expect(@ant5.gasto_energetico_total).to be_within(@valor*0.9).of(@valor*1.1)
		end


	end


end




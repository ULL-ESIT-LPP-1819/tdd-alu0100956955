# practica 5
# Pediremos : edad , sexo , peso , cintura , cadera
# 		circunferencia cintura y circunferencia de cadera
#

include Comparable
require 'pry'
require 'proyecto_etiqueta/individuo.rb'

# Clase antropometrico , hija de indivuo
class Antropometrico < Individuo
	attr_reader :edad , :sexo , :altura , :peso , :cintura , :cadera, :imc, :grasa, :relacion, :factor_fisico
	def initialize ( edad , sexo , peso , altura , cintura , cadera, factor_fisico)
		@edad,@sexo,@altura,@peso,@cintura,@cadera,@factor_fisico = edad , sexo , altura , peso , cintura , cadera , factor_fisico
	end

	# Metodo Para calcular el IMC
	def IMC
		@imc=@peso/(@altura*@altura)
		@imc.round(2) # esta función la uso para que solo coja 2 decimales y no ponga 10
	end

	# Metodo para calcular el porcentaje de grasa
	def porcentaje_grasa
		@grasa=1.2*@imc+0.23*@edad-10.8*@sexo-5.4
		@grasa.round(2)
	end

	# Metodo que muestra la calificación del OMS 
	def OMS # función que muesrta la calificación OMS en función del IMC
		case @imc
		when 0..18.5
			"Bajo peso"
		when 18.5..24.9
			"Adecuado"
		when 25.0..29.9
			"Sobrepeso"
		when 30.0..34.9
			"Obesidad grado 1"
		when 35.0..39.9
			"Obesidad grado 2"
		when 40..60
			"Obesidad grado 2"
		else
			"problema con el valor a evaluar"
		end
	end
	
	# Metodo que indica la calificacion de grasa , dependiendo de la relación cintura/cadera
	def distribucion_grasa
		@relacion=@cintura/@cadera
		if @sexo == 1
			case @relacion
			when 0.83..0.88
				"Riesgo bajo"
			when 0.88..0.95
				"Riesgo moderado"
			when 0.95..1.01
				"Riesgo alto"
			when 1.01..1.10
				"Riesgo muy alto"
			else
				"Vas a morir"
			end
		else
			case @relacion
			when 0.72..0.75
				"Riesgo bajo"
			when 0.78..0.82
				"Riesgo moderado"
			when 0.82..0.88
				"Riesgo alto"
			when 0.88..1.01
				"Riesgo muy alto"
			else 
				"Vas a morir"
			end
		end
	end

	# Convierte los datos antropometricos a string
	def to_s()
		string ="[ "
		string += @edad +","+ @sexo + "," + @altura + "," + @peso + "," + @imc + "," + @grasa +"," + @relacion + " ]"
		return string

	end

	# Metodo necesario para los metodos comparables
	def <=> (aux)
		self.IMC<=>aux.IMC
	end


	def gasto_energetico_total ()
                peso_teorico_ideal = ((@altura*100) -150 )*0.75+50

                if(sexo == 0)
                        gasto_energetico_basal = (10*@peso)+(6.25*(@altura*100))-(5*@edad)-161
                else
                        gasto_energetico_basal = (10*@peso)+(6.25*(@altura*100))-(5*@edad)+5
                end

                efecto_termogeno = gasto_energetico_basal*0.10

                gasto_actividad_fisica = gasto_energetico_basal * @factor_fisico

                @gasto_energetico_total = gasto_energetico_basal + efecto_termogeno + gasto_actividad_fisica

        end


end







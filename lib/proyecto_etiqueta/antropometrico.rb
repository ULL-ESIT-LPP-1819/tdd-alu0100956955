# practica 5
# Pediremos : edad , sexo , peso , cintura , cadera
# 		circunferencia cintura y circunferencia de cadera
#

require 'pry'
require 'proyecto_etiqueta/individuo.rb'

class Antropometrico < Individuo
	attr_reader :edad , :sexo , :altura , :peso , :cintura , :cadera, :imc, :grasa, :relacion
	def initialize ( edad , sexo , peso , altura , cintura , cadera)
		@edad,@sexo,@altura,@peso,@cintura,@cadera = edad , sexo , altura , peso , cintura , cadera
	end

	def IMC
		@imc=@peso/(@altura*@altura)
		@imc.round(2) # esta función la uso para que solo coja 2 decimales y no ponga 10
	end

	def porcentaje_grasa
		@grasa=1.2*@imc+0.23*@edad-10.8*@sexo-5.4
		@grasa.round(2)
	end

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

	def to_s()
		string ="[ "
		string += @edad +","+ @sexo + "," + @altura + "," + @peso + "," + @imc + "," + @grasa +"," + @relacion + " ]"
		return string

	end


end







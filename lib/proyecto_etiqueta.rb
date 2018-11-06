#require "proyecto_etiqueta/version"
#
#module ProyectoEtiqueta
#  class Error < StandardError; end
  # Your code goes here...
#end

class Etiqueta
        attr_reader :nombre, :valor, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal, :porciones, :gramos_porciones, :peso

	def initialize(nombre,valor,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,gramos_porciones,peso)
                @nombre, @valor, @grasas, @saturadas, @hidratos, @azucares, @proteinas, @sal,@porciones,@gramos_porciones,@peso = nombre,valor,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,gramos_porciones,peso
        end

	# Funciones para el nombre de la etiqueta
        def asignar_nombre(nombre)
                @nombre=(nombre)
        end
	def get_grasas
                @grasa_100=((@grasas*100)/@peso)
                @ir_100_grasa=(@grasa_100/70)*100
                @grasa_porcion=((@grasas*@gramos_porciones)/@peso)
                @ir_porcion_grasa=(@grasa_porcion/70)*100
                "| #{@grasas} | #{@grasa_100} | #{@ir_100_grasa.round(1)}% | #{@grasa_porcion} | #{@ir_porcion_grasa.round(1)} |"
        end






	# Funciones para el valor energetico
        def asignar_valor(valor)
                @valor=valor
        end


	# Funciones para el valor de grasas
	def asignar_grasas(grasas)
		@grasas=grasas
	end


	# Funciones para las grasas saturadas
        def asignar_saturadas(saturadas)
                @saturadas=saturadas
        end
	

	# Funciones para los hidratos de carbono
        def asignar_hidratos(hidratos)
                @hidratos=(hidratos)
        end


	# Funciones para los azucares
        def asignar_azucares(azucares)
                @azucares=azucares
        end


	# Funciones para las proteinas
        def asignar_proteinas(proteinas)
                @proteinas=proteinas
        end


	# Funciones para la sal
        def asignar_sal(sal)
                @sal=sal
        end







	
end


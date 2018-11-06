#require "proyecto_etiqueta/version"
#
#module ProyectoEtiqueta
#  class Error < StandardError; end
  # Your code goes here...
#end

class Etiqueta
        attr_reader :nombre, :valorKj, :valorKcal, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal, :porciones, :gramos_porciones, :peso

	def initialize(nombre,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,gramos_porciones,peso)
                @nombre, @grasas, @saturadas, @hidratos, @azucares, @proteinas, @sal,@porciones,@gramos_porciones,@peso = nombre,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,gramos_porciones,peso
		@valorKj=(@grasas*37)+(@saturadas*37)+(@hidratos*17)+(@azucares*10)+(@proteinas*17)+(@sal*25)
		@valorKcal=(@grasas*9)+(@saturadas*9)+(@hidratos*4)+(@azucares*2.4)+(@proteinas*4)+(@sal*6)

        end

	# Funciones para el nombre de la etiqueta
        def asignar_nombre(nombre)
                @nombre=(nombre)
        end
	def get_grasas
                @_100=((@grasas*100)/@peso)
                @ir_100=(@_100/70)*100
                @porcion=((@grasas*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/70)*100
                "| #{@grasas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)} |"
        end






	# Funciones para el valor energetico



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


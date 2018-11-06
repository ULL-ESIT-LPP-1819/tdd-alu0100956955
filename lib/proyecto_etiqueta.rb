#require "proyecto_etiqueta/version"
#
#module ProyectoEtiqueta
#  class Error < StandardError; end
  # Your code goes here...
#end

class Etiqueta
        attr_reader :nombre, :valor, :grasas, :saturadas, :hidratos, :azucares, :proteinas, :sal

        def initialize(nombre,valor,grasas,saturadas,hidratos,azucares,proteinas,sal)
                @nombre, @valor, @grasas, @saturadas, @hidratos, @azucares, @proteinas, @sal = nombre,valor,grasas,saturadas,hidratos,azucares,proteinas,sal
        end

	# Funciones para el nombre de la etiqueta
        def asignar_nombre(nombre)
                @nombre=(nombre)
        end




	
end


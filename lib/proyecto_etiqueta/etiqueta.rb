# Practica 6, etiqueta
#

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



        # Funciones para el valor energetico
        def asignar_valorKj(valor)
                @valorKj=valor
        end
        def asignar_valorKcal(valor)
                @valorKcal=valor
        end



        # Funciones para el valor de grasas
        def asignar_grasas(grasas)
                @grasas=grasas
        end
        def get_grasas
                @_100=((@grasas*100)/@peso)
                @ir_100=(@_100/70)*100
                @porcion=((@grasas*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/70)*100
		p "| #{@grasas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                #"| #{@grasas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
        end



	 # Funciones para las grasas saturadas
        def asignar_saturadas(saturadas)
                @saturadas=saturadas
        end
        def get_saturadas
                @_100=((@saturadas*100)/@peso)
                @ir_100=(@_100/20)*100
                @porcion=((@saturadas*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/20)*100
		p "| #{@saturadas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                #"| #{@saturadas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
        end





        # Funciones para los hidratos de carbono
        def asignar_hidratos(hidratos)
                @hidratos=(hidratos)
        end
        def get_hidratos
                @_100=((@hidratos*100)/@peso)
                @ir_100=(@_100/260)*100
                @porcion=((@hidratos*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/260)*100
		p "| #{@hidratos} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                #"| #{@hidratos} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
        end




        # Funciones para los azucares
        def asignar_azucares(azucares)
                @azucares=azucares
        end
        def get_azucares
                @_100=((@azucares*100)/@peso)
                @ir_100=(@_100/90)*100
                @porcion=((@azucares*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/90)*100
		p "| #{@azucares} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                #"| #{@azucares} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
        end



        # Funciones para las proteinas
        def asignar_proteinas(proteinas)
                @proteinas=proteinas
        end
        def get_proteinas
                @_100=((@proteinas*100)/@peso)
                @ir_100=(@_100/50)*100
                @porcion=((@proteinas*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/50)*100
		p"| #{@proteinas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                #"| #{@proteinas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
        end



	        # Funciones para la sal
        def asignar_sal(sal)
                @sal=sal
        end
        def get_sal
                @_100=((@sal*100)/@peso)
                @ir_100=(@_100/6)*100
                @porcion=((@sal*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/6)*100
		p "| #{@sal} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                #"| #{@sal} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
        end




	# Funcion para mostrar la tabla
	def to_s()
		puts " ------------------------------------------"
		puts " |  C  | 100g | IR | prcn | IR prcn |"
		get_grasas
		get_saturadas
		get_hidratos
		get_azucares
		get_proteinas
		get_sal
	end




end


e = Etiqueta.new("carne",65.0,23.0,5.0,30.0,260.0,1.0,5,200,1000)
e.to_s








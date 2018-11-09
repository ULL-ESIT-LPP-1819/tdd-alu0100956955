# Practica 6, etiqueta
#

class Etiqueta
        attr_reader :nombre, :valorKj, :valorKcal, :grasas, :saturadas, :monoin, :poli, :hidratos, :azucares, :alco, :almidon, :fibra, :proteinas, :sal, :porciones, :gramos_porciones, :peso

        def initialize(nombre,saturadas,monoin,poli,hidratos,azucares,alco,almidon,fibra,proteinas,sal,porciones,gramos_porciones,peso)
                @nombre,  @saturadas, @monoin, @poli, @hidratos, @azucares, @alco, @almidon, @fibra, @proteinas, @sal,@porciones,@gramos_porciones,@peso = nombre,saturadas,monoin,poli,hidratos,azucares,alco,almidon,fibra,proteinas,sal,porciones,gramos_porciones,peso


		@grasas=(@saturadas+@monoin+@poli)
                @valorKj=(@monoin*37)+(@saturadas*37)+(@poli*37)+(@hidratos*17)+(@azucares*10)+(@alco*10)+(@almidon*17)+(@fibra*8)+(@proteinas*17)+(@sal*25)
		@valorKcal=(@monoin*9)+(@saturadas*9)+(@poli*9)+(@hidratos*4)+(@azucares*2.4)+(@alco*2.4)+(@almidon*4)+(@fibra*2)+(@proteinas*4)+(@sal*6)

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
                [ @grasas , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
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
		#p "| #{@saturadas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                [ @saturadas , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	# Funciones para las grasas monoinsaturadas
	def asignar_monoin(monoin)
		@monoin=monoin
	end
	def get_monoin
                @_100=((@monoin*100)/@peso)
                @ir_100=(@_100/25)*100
                @porcion=((@monoin*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/25)*100
                [ @monoin , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	# Funciones para las grasas Poliinsaturadas
        def asignar_poli(poli)
                @poli=poli
        end
        def get_poli
                @_100=((@poli*100)/@peso)
                @ir_100=(@_100/25)*100
                @porcion=((@poli*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/25)*100
                [ @poli , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
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
                [ @hidratos , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
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
                [ @azucares , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	# Funciones para los polialcoholes
        def asignar_alco(alco)
                @alco=alco
        end
        def get_alco
                @_100=((@alco*100)/@peso)
                #@ir_100=(@_100/90)*100
                @porcion=((@alco*@gramos_porciones)/@peso)
                #@ir_porcion=(@porcion/90)*100
                [ @alco , @_100 , 0 , @porcion , 0 ]
        end


	# Funciones para el almidon
        def asignar_almidon(almidon)
                @almidon=almidon
        end
        def get_almidon
                @_100=((@almidon*100)/@peso)
                #@ir_100=(@_100/90)*100
                @porcion=((@almidon*@gramos_porciones)/@peso)
                #@ir_porcion=(@porcion/90)*100
                [ @almidon , @_100 , 0 , @porcion , 0 ]
        end


	# Funciones para la fibra
        def asignar_fibra(fibra)
                @fibra=fibra
        end
        def get_fibra
                @_100=((@fibra*100)/@peso)
                #@ir_100=(@_100/90)*100
                @porcion=((@fibra*@gramos_porciones)/@peso)
                #@ir_porcion=(@porcion/90)*100
                [ @fibra , @_100 , 0 , @porcion , 0 ]
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
		#p"| #{@proteinas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                [ @proteinas , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
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
		#p "| #{@sal} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                [ @sal , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	
	# Funcion para mostrar la tabla
        def to_s()
                "#{get_grasas()}\n#{get_saturadas()}\n#{get_monoin()}\n#{get_poli()}\n#{get_hidratos()}\n#{get_azucares()}\n#{get_alco()}\n#{get_almidon()}\n#{get_fibra()}\n#{get_proteinas()}\n#{get_sal()}"
        end




end


#e = Etiqueta.new("carne",65.0,23.0,17.0,23.0,5.0,30.0,38.0,65.0,260.0,1.0,5,200,1000)
#puts("[ g , 100g , IR% , prcn , IR prcn]")
#puts(e.to_s())








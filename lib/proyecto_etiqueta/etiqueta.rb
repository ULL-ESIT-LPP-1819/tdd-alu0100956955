# Practica 6, etiqueta
#
include Comparable

# Clase etiqueta de valores nutricionales
class Etiqueta
        attr_reader :nombre, :valorKj, :valorKcal, :grasas, :saturadas, :monoin, :poli, :hidratos, :azucares, :alco, :almidon, :fibra, :proteinas, :sal, :porciones, :gramos_porciones, :peso
	# Metodo para inicializar
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



        # Metodo para asignar el valor energetico en Kj
        def asignar_valorKj(valor)
                @valorKj=valor
        end
	# Metodo para asignar el valor energetico en Kcal
        def asignar_valorKcal(valor)
                @valorKcal=valor
        end



        # Metodo para asignar el valor de grasas
        def asignar_grasas(grasas)
                @grasas=grasas
        end
	# Metodo para obtner el valor de grasas
        def get_grasas
                @_100=((@grasas*100)/@peso)
                @ir_100=(@_100/70)*100
                @porcion=((@grasas*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/70)*100
                [ @grasas , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end



	 # Metodo para asignar las grasas saturadas
        def asignar_saturadas(saturadas)
                @saturadas=saturadas
        end
	# Metodo para obtener las grasas saturadas
        def get_saturadas
                @_100=((@saturadas*100)/@peso)
                @ir_100=(@_100/20)*100
                @porcion=((@saturadas*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/20)*100
		#p "| #{@saturadas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                [ @saturadas , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	# Metodo para asignar las grasas monoinsaturadas
	def asignar_monoin(monoin)
		@monoin=monoin
	end
	# Metodo para obetner las grasas monoinsaturadas
	def get_monoin
                @_100=((@monoin*100)/@peso)
                @ir_100=(@_100/25)*100
                @porcion=((@monoin*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/25)*100
                [ @monoin , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	# Metodo para asignar las grasas Poliinsaturadas
        def asignar_poli(poli)
                @poli=poli
        end
	# Metodo para obtener las grasas poliinsaturdas
        def get_poli
                @_100=((@poli*100)/@peso)
                @ir_100=(@_100/25)*100
                @porcion=((@poli*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/25)*100
                [ @poli , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end





        # Metodo para asignar los hidratos de carbono
        def asignar_hidratos(hidratos)
                @hidratos=(hidratos)
        end
	# Metodo para obetner los hidratos de carbono
        def get_hidratos
                @_100=((@hidratos*100)/@peso)
                @ir_100=(@_100/260)*100
                @porcion=((@hidratos*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/260)*100
                [ @hidratos , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end




        # Metodo para asignar los azucares
        def asignar_azucares(azucares)
                @azucares=azucares
        end
	# Metodo para obtener los azucares
        def get_azucares
                @_100=((@azucares*100)/@peso)
                @ir_100=(@_100/90)*100
                @porcion=((@azucares*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/90)*100
                [ @azucares , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	# Metodo para asignar los polialcoholes
        def asignar_alco(alco)
                @alco=alco
        end
	# Metodo para obetner los polialcoholes
        def get_alco
                @_100=((@alco*100)/@peso)
                #@ir_100=(@_100/90)*100
                @porcion=((@alco*@gramos_porciones)/@peso)
                #@ir_porcion=(@porcion/90)*100
                [ @alco , @_100 , 0 , @porcion , 0 ]
        end


	# Metodo para asignar el almidon
        def asignar_almidon(almidon)
                @almidon=almidon
        end
	# Metodo para obtner el almidon
        def get_almidon
                @_100=((@almidon*100)/@peso)
                #@ir_100=(@_100/90)*100
                @porcion=((@almidon*@gramos_porciones)/@peso)
                #@ir_porcion=(@porcion/90)*100
                [ @almidon , @_100 , 0 , @porcion , 0 ]
        end


	# Metodo para asignar la fibra
        def asignar_fibra(fibra)
                @fibra=fibra
        end
	# Metodo para obtner la fibra
        def get_fibra
                @_100=((@fibra*100)/@peso)
                #@ir_100=(@_100/90)*100
                @porcion=((@fibra*@gramos_porciones)/@peso)
                #@ir_porcion=(@porcion/90)*100
                [ @fibra , @_100 , 0 , @porcion , 0 ]
        end




        # Metodo para asignar las proteinas
        def asignar_proteinas(proteinas)
                @proteinas=proteinas
        end
	# Metodo para obtener las proteinas
        def get_proteinas
                @_100=((@proteinas*100)/@peso)
                @ir_100=(@_100/50)*100
                @porcion=((@proteinas*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/50)*100
		#p"| #{@proteinas} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                [ @proteinas , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end



	# Metodo para asginar la sal
        def asignar_sal(sal)
                @sal=sal
        end
	# Metodo para obtener la sal
        def get_sal
                @_100=((@sal*100)/@peso)
                @ir_100=(@_100/6)*100
                @porcion=((@sal*@gramos_porciones)/@peso)
                @ir_porcion=(@porcion/6)*100
		#p "| #{@sal} | #{@_100} | #{@ir_100.round(1)}% | #{@porcion} | #{@ir_porcion.round(1)}% |"
                [ @sal , @_100 , @ir_100.round(1) , @porcion , @ir_porcion.round(1) ]
        end


	
	# Metodo para mostrar la tabla
        def to_s()
                "#{get_grasas()}\n#{get_saturadas()}\n#{get_monoin()}\n#{get_poli()}\n#{get_hidratos()}\n#{get_azucares()}\n#{get_alco()}\n#{get_almidon()}\n#{get_fibra()}\n#{get_proteinas()}\n#{get_sal()}"
        end

	# Metodo para hacer funcional los metodos de comparable
	def <=> (aux)

			self.valorKj<=>aux.valorKj && self.valorKcal<=>aux.valorKcal	
	end

	def +(other)	# Las porciones tiene que ser OBLIGATORIAMENTE uno en los DOS alimentos, en caso de que se sume atributo a atributo
		@valorKcal + other.valorKcal
		# Etiqueta.new(@nombre+other.nombre , @saturadas+other.saturadas , @monoin+other.monoin , @poli+other.poli , @hidratos+other.hidratos , @azucares +other.azucares , @alco+other.alco , @almidon+other.almidon , @fibra+other.fibra , @proteinas+other.proteinas , @sal+other.sal , @porciones , @gramos_porciones+other.gramos_porciones , @peso+other.peso)

	end


end

#e = Etiqueta.new("carne",65.0,23.0,17.0,23.0,5.0,30.0,38.0,65.0,260.0,1.0,5,200,1000)
#puts("[ g , 100g , IR% , prcn , IR prcn]")
#puts(e.to_s())








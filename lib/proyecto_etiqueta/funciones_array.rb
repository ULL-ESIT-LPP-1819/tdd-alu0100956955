require "proyecto_etiqueta/lista.rb"
#require "Array"

class Array
	def ordenar_for
		@aux = @self
		for i in (0..@aux.size-1)
			for j in (0..@aux.size-1)
				if j+1 != @aux.size
					if @aux[j+1] < @aux[j]
						@aux[j],@aux[j+1] = @aux[j+1], @aux[j]
					end
				end
			end
		end
		@aux
       	end
end

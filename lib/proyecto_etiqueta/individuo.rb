include Comparable

# clase inviduo
class Individuo
	attr_reader :nombre, :dni
	def initialize (nombre,dni)
		@nombre,@dni=nombre,dni
	end

	# metodo que pasa los datos de individuo a string
	def to_s()
		string="[ " +@nombre+","+@dni+" ]"
		return string
	end

end





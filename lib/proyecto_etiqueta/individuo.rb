

class Individuo
	attr_reader :nombre, :dni
	def initialize (nombre,dni)
		@nombre,@dni=nombre,dni
	end

	def to_s()
		string="[ " +@nombre+","+@dni+" ]"
		return string
	end

end





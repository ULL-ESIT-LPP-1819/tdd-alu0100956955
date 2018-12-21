
#include Enumerable
Node = Struct.new(:value, :nest, :prev)


class Lista
	include Enumerable
    attr_reader :head, :tail
    def initialize(head , tail)
        @head, @tail = head,tail
    end
	
    # Metodo para insertar por la cola
    def insert_tail (value)  # Insertar desde la cola  ( este es el que usaremos para practica 7)
	nodo=Node.new(value,nil,nil)
        nodo.prev = @tail
        @tail = nodo
        if (@head == nil)
            @head = nodo
        end
        nodo.nest = nil
        if (nodo.prev != nil)
            nodo.prev.nest = nodo
        end
    end

    # Metodo para insertar por la cabeza
    def insert_head (value)  # Insertar desde la cabeza
	    nodo=Node.new(value,nil,nil)
        nodo.nest = @head
        @head = nodo    # el head ahora apunta a este nodo
        if (@tail == nil)
            @tail = nodo
        end
        nodo.prev = nil
        if (nodo.nest != nil)
            nodo.nest.prev = nodo
        end
    end

    # Metodo para extraer por cabeza
    def extract_head () # extraemos por cabeza ( este es el que usaremos para practica 7)
        if (@head==nil)
            puts "Sin elementos en la lista"
        else
		aux = @head
            @head = @head.nest
	    aux.nest = nil
	    if(@head== nil)
		    @tail=nil
	    else
            	@head.prev = nil
	    end
	    return aux
            
        end
    end

    # Metodo para extraer por cola
    def extract_tail ()
        if (@head==nil)
            puts "Sin elementos en la lista"
        else
		aux = @tail
            @tail = @tail.prev
	    aux.prev = nil
	    if (@tail== nil)
		    @head = nil
	    else
            	@tail.nest = nil
	    end
	    return aux
            
        end
    end

    # Metodo para saber si la lista esta vacia
    def vacio? ()
	    if((@tail==nil)&&(@head==nil))
		    return true
	    else
		    return false
	    end
    end

    # Metodo para convertir la lista a formato string
    def to_s ()
	aux = @head
	string= "("
	while aux!=nil
		string+="["+aux.value.to_s+"]"
		aux=aux.nest
		if aux!=nil
			string+="-"
		end
	end
	string +=")"
	return string
    end

    # Metodo para poder llevar a cabo las operaciones de enumerable
   def each
            aux = @head
            while aux!=nil
                    yield aux.value
                    aux=aux.nest
            end
    end


   #def swap (A,B)
	   
   #end


   def ordenar_for
	   @lista = self.map{ |a| a }
	   	for i in (0..@lista.count-1)
			for j in (0..@lista.count-1)
				if j+1 != @lista.count
                                        if @lista[j+1] < @lista[j]
						@lista[j],@lista[j+1] = @lista[j+1],@lista[j]
        				end

				end
			end
		end
		@lista
   end

   def ordenar_each
	   @aux = self.map { |x| x}
	   @pos = 0

	   @aux.each do |x|
		   @pos = @pos +1
		   @aux[@pos..@aux.length-1] do |y|
			   if (x>y)
				   x,y = y,x
			   end
		   end
	   end
   end


end

class Array
        def ordenar_for
                @aux = self
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

        def ordenar_each
                @aux=[]
                aux_self=self.clone
                (0..self.size-1).each{|i| min=aux_self.min; @aux << min; aux_self.delete(min)}
                @aux
        end
end



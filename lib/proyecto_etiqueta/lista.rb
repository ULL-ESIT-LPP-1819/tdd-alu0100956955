
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


end

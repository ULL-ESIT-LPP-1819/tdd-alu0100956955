

Node = Struct.new(:value, :nest, :prev)


class Lista

    attr_reader :head, :tail
    def initialize(head , tail)
        @head, @tail = head,tail
    end

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

    def vacio? ()
	    if((@tail==nil)&&(@head==nil))
		    return true
	    else
		    return false
	    end
    end

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




end

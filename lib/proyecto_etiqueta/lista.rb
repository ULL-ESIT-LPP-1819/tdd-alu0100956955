

Node = Struct.new(:value, :nest, :prev)


class Lista

    attr_reader :head, :tail
    def initialize(head , tail)
        @head, @tail = head,tail
    end

    def insert_tail (nodo)  # Insertar desde la cola  ( este es el que usaremos para practica 7)

        nodo.prev = @tail
        @tail = nodo
        if (@head == NIL)
            @head = nodo
        end
        nodo.nest = NIL
        if (nodo.prev != NIL)
            nodo.prev.nest = nodo
        end
    end

    def insert_head (nodo)  # Insertar desde la cabeza
        nodo.nest = @head
        @head = nodo    # el head ahora apunta a este nodo
        if (@tail == NIL)
            @tail = nodo
        end
        nodo.prev = NIL
        if (nodo.nest != NIL)
            nodo.nest.prev = nodo
        end
    end

    def extract_head () # extraemos por cabeza ( este es el que usaremos para practica 7)
        if (@head==NIL)
            puts "Sin elementos en la lista"
        else
		aux = @head
            @head = @head.nest
	    aux.nest = NIL
	    if(@head== NIL)
		    @tail=NIL
	    else
            	@head.prev = NIL
	    end
	    return aux
            
        end
    end

    def extract_tail ()
        if (@head==NIL)
            puts "Sin elementos en la lista"
        else
		aux = @tail
            @tail = @tail.prev
	    aux.prev = NIL
	    if (@tail== NIL)
		    @head = NIL
	    else
            	@tail.nest = NIL
	    end
	    return aux
            
        end
    end

    def vacio? ()
	    if((@tail==NIL)&&(@head==NIL))
		    return TRUE
	    else
		    return FALSE
	    end
    end

    def to_s ()
	aux = @head
	string= "("
	while aux!=NIL
		string+="["+aux.value.to_s+"]"
		aux=aux.nest
		if aux!=NIL
			string+="-"
		end
	end
	string +=")"
	return string
    end




end

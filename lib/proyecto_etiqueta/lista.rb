

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
            @head = @head.nest
            @head.prev = NIL
            #@head.prev.next = NIL
            end
    end



end

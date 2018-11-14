

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



end

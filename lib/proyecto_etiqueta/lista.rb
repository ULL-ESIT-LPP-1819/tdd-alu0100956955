

Node = Struct.new(:value, :nest, :prev)


class Lista

    attr_reader :head, :tail
    def initialize(head , tail)
        @head, @tail = head,tail
    end

end

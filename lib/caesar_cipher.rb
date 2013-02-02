module CaesarCipher
    VERSION = "0.0.1"

    class Caesar

        attr_reader :shift

        def initialize(shift=4)
            @shift = shift
            @alphabet = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
        end

        def cipher(text, shift=@shift)
            caesar_algorithm :cipher, text, shift
        end

        def decipher(text, shift=@shift)
            caesar_algorithm :decipher, text, shift
        end


        def correct_case(old_char, new_char)
            if old_char.downcase == old_char
                new_char.downcase 
            else
                new_char.upcase
            end
        end

        def caesar_algorithm(method, text, shift)
            shift = method == :cipher ? shift : -shift
            text.split("").map do |c|
                if @alphabet.include? c.downcase
                    pos = @alphabet.index(c.downcase)                    
                    correct_case c, @alphabet.rotate(shift)[pos]
                else
                    c
                end
            end.join
        end
    
    end

end

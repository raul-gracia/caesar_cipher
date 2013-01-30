class Caesar
	
	def initialize(shift=4)
		@shift = shift
		@alphabet = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
	end

	def cipher(text, shift=@shift)
		output = ""
		text.split("").each do |c|
			output << cipher_char(c, shift)
		end
		output
	end

	def decipher(text,shift=@shift)
		output = ""
		text.split("").each do |c|
			output << decipher_char(c, shift)
		end
		output
	end


	def cipher_char(c, shift)
		ciphed_char = c
		if @alphabet.include? c.downcase 
			pos = @alphabet.index(c.downcase)
			newpos = pos+shift
			newpos = newpos - @alphabet.size if newpos >= @alphabet.size
			ciphed_char = correct_case c, @alphabet[newpos]
		end		
		ciphed_char
	end

	def decipher_char(c, shift)
		decipher_char = c
		if @alphabet.include? c.downcase
			pos = @alphabet.index(c.downcase)
			newpos = pos-shift
			decipher_char = correct_case c, @alphabet[newpos]
		end
		decipher_char
	end 


	def correct_case(old_char, new_char)
		if old_char.downcase == old_char
			new_char.downcase 
		else
			new_char.upcase
		end
	end

	def shift
		@shift
	end
end
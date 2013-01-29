class Caesar
	
	def initialize(shift=4)
		@shift = shift
		@alphabet = %w{ a b c d e f g h i j k l m n o p q r s t u v w x y z}
	end

	def cipher(text, shift=@shift)
		output = ""
		text.downcase.split("").each do |c|
			if @alphabet.include? c 
				pos = @alphabet.index(c)
				newpos = pos+shift
				newpos = @alphabet.size - newpos if newpos >= @alphabet.size
				output << @alphabet[newpos]
			else
				output << c
			end
		end

		output
	end

	def shift
		@shift
	end

end
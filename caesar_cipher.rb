def caesar_cipher(input_string, shift_num)
	input_string.gsub(/[A-Za-z]/) do |letter|
		if letter.ord >= 65 && letter.ord <= 90 #uppercase
			adjustment = 65
		end

		if letter.ord >= 97 && letter.ord <= 122 #lowercase
			adjustment = 97
		end

		letter.ord.-(adjustment).+(shift_num).%(26).+(adjustment).chr
	end
end

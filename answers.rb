def select_elements_starting_with_a(array)
	array.select { |e| e[0] == 'a' }
end

def select_elements_starting_with_vowel(array)
	array.select { |e| e.start_with?('a','e','i','o','u') }
end

def remove_nils_from_array(array)
	array.compact!
end

def remove_nils_and_false_from_array(array)
	array.delete_if { |e| e.nil? || e == false }
end

def reverse_every_element_in_array(array)
	array.map { |e| e.reverse }
end

def every_possible_pairing_of_students(array)
	array.combination(2)
end

def all_elements_except_first_3(array)
	array.drop(3)
end

def add_element_to_beginning_of_array(array, element)
	array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
	array.sort { |x, y| x[-1] <=> y[-1] }
end

def get_first_half_of_string(string)
	i = string.length / 2.0
	string[0..i.ceil-1]
end

def make_numbers_negative(number)
	number < 0 ? number : number = number * -1
end

def separate_array_into_even_and_odd_numbers(array)
	new_array = []
	new_array << array.select { |e| e.even? }
	new_array << array.select { |e| e.odd? }
	new_array
end

def number_of_elements_that_are_palindromes(array)
	return_arr = array.select { |e| e == e.reverse }
	return_arr.length
end

def shortest_word_in_array(array)
	array.sort! { |x, y| x.length <=> y.length }
	array.first
end

def longest_word_in_array(array)
	array.sort! { |x, y| y.length <=> x.length }
	array.first
end

def total_of_array(array)
	array.inject(:+)
end

def double_array(array)
	array.concat(array)
end

def turn_symbol_into_string(symbol)
	symbol.to_s
end

def average_of_array(array)
	(array.inject(:+) / (array.length + 0.0) ).round
end

def get_elements_until_greater_than_five(array)
	array.take_while { |e| e <= 5 }
end

def convert_array_to_a_hash(array)
	hash = Hash[*array]
	hash
end

def get_all_letters_in_array_of_words(array)
	new_array = []
	string = array.inject(:+)
	string.each_char { |c| new_array << c }
	new_array.sort!
end

def swap_keys_and_values_in_a_hash(hash)
	array = hash.map { |k, v| k = v, v = k }
	hash = Hash[*array.flatten!]
	hash
end

def add_together_keys_and_values(hash)
	array = hash.to_a.flatten!.inject(:+)
end

def remove_capital_letters_from_string(string)
	new_array = []
	string.gsub!(/[A-Z]/, "")
end

def round_up_number(number)
	number.ceil
end

def round_down_number(number)
	number.floor
end

def format_date_nicely(time)
	date = time.to_s
	array = date[0..9].split("-")
	array.reverse!.join("/")
end

def get_domain_name_from_email_address(email)
	email.gsub(/.+@([^.]+).+/, '\1')
end

def titleize_a_string(string)
	array = string.split(' ')
	array.map { |c| c.length > 3 || self[0].object_id == c.object_id ? c.capitalize : c }.join(' ') 
	# Definitely won't work in all cases, probably needs an array of words
end






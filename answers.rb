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
	i = (string.length / 2.0).round
	string[0..i-1]
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


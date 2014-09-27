def select_elements_starting_with_a(array)
	array.select { |e| e[0] == 'a' }
end

def select_elements_starting_with_vowel(array)
	array.select { |e| e.start_with?('a','e','i','o','u') }
end

def remove_nils_from_array(array)
	array.delete_if { |e| e.nil? }
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
def select_elements_starting_with_a(array)
	array.select { |e| e[0] == 'a' }
end

def select_elements_starting_with_vowel(array)
	array.select { |e| e.start_with?('a','e','i','o','u') }
end

def remove_nils_from_array(array)
	array.delete_if { |e| e.nil? }
end
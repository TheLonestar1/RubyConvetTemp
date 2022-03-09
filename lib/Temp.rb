types = {
  'K' => nil,
  'C' => nil,
  'F' => nil
}

def tempe(type,value,types)
	case type
	when 'K'
	  types['C'] = (types[type].to_i - 273.15).round
	  types['F'] = (types[type].to_i * 1.8 - 459.67).round	
	when 'C'
 	  types['K'] = (types[type].to_i + 273.15).round
	  types['F'] = (types[type].to_i * 1.8 + 32).round
	when 'F'
	  types['C'] = ((types[type].to_i - 32) / 1.8).round
	  types['K'] = ((types[type].to_i + 459.67) / 1.8).round
	end	
end
print 'Enter First type(K,C,F): '
type = gets.chomp
print 'Enter Value: '
types[type] = gets.chomp
tempe(type,types[type],types)
types.each { |x, y| puts "#{x} = #{y}" }

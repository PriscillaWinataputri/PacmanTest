module Pacman
	class Command 
=begin
		 def self.process(command) 
		 	/\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/ =~ command 
		 	[:place, $1.to_i, $2.to_i, $3] 
		 end 
		 if match = /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/.match(command) 
		 	[:place, match[:x].to_i, match[:y].to_i, match[:direction]] 
		 else 
		 	[:invalid, command] 
		 end 
=end

	def self.process(command) 
		case command 
		when /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/ 
			[:place, $~[:x].to_i, $~[:y].to_i, $~[:direction]] 
		when /\AMOVE\Z/ 
			[:move] 
		when /\ALEFT\Z/ 
			[:turn_left] 
		when /\ARIGHT\Z/ 
			[:turn_right] 
		when /\AREPORT\Z/ 
			[:report] 
		else 
			[:invalid, command] 
		end 
	end

	end 
end
#My first ruby program

def score(x)
	case x
		when 0
			return "Love"
		when 1
			return "Fifteen"
		when 2
			return "Thirty"	
		when 3
			return "Forty"
		else 
			return "Score Error"
	end
end

def print_score(x,y)
	puts "=== Score Board ==="
	if ( x >= 3 && y >= 3 )

		if( x == y )
			return "Deuce"
		elsif ( x > y )
			return "First Player Advantage"
		else return "Second Player Advantage"
		end

	else return score(x) + " : " + score(y)
	end
end

def has_winner(x,y)
	if ( x >= 4 || y >= 4 ) && ( ( x - y ).abs >= 2 )
		return true
	else 
		return false
	end
end

firstplayerscore = 0
secondplayerscore = 0

loop do
	puts print_score(firstplayerscore,secondplayerscore)
	loop do
		print "Who win next point (type 1 or 2) :"
		#input only 1 or 2
		score = gets.to_i

		if ( score == 1 )
			firstplayerscore= firstplayerscore +1
			break
		elsif ( score == 2 ) 
			secondplayerscore= secondplayerscore+1
			break
		else puts "************* Input Error : type 1 or 2 only *************"
		end

	end
	break if has_winner(firstplayerscore,secondplayerscore)
end

puts ""
if ( firstplayerscore > secondplayerscore)
	puts "==== First Player Wins!!! ===="
else 
	puts "==== Second Player Wins!!! ===="
end

    US_state.each {|key,value| puts value if value[-1] == "N" || value[-1] == "T" }
    
    sorted_reverse_hash = US_state.sort {|key1,key2| key2<=>key1}
    
    vowel = ['a','e','i','o','u']
    US_state.each {|key,value| puts key if (vowel.include? key.downcase[0]) && (vowel.include? key.downcase[-1])}
	
	def is_prime?(n)
        return false if n<=1
        (2..n-1).each {|x| return false if n % x == 0}
        return true
    end
    def prime_hash(n)
        h = hash.new
        index = 1
        (1..n).each do |x|
            if is_prime?(x)
                h[("p"+index.to_s).to_sym] = x
                index +=1
            end
        end

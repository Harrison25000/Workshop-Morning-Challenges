#Challenge 1 - Debug

def say_hello(name)
   "hello #(name)"
end

#SOLUTION

def say_hello(name)
   puts "Hello #{name}"

end

say_hello("Ron")

puts "----------"




#Challenge 2 - Debug

# def encode(plaintext, key)
#   cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#   ciphertext_chars = plaintext.chars.map do |char|
#    (65 + cipher.find_index(char)).chr
#   end
#   ciphertext_chars.join
# end

# def decode(ciphertext, key)
#   cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#   plaintext_chars = ciphertext.chars.map do |char|
#    cipher[65 - char.ord]
#   end
#   plaintext_chars.join
# end

#encode("theswiftfoxjumpedoverthelazydog", "secretkey")

#decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

# => "theswiftfoxjumpedoverthelazydog"", "secretkey")
# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"


#SOLUTION

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  puts ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  puts plaintext_chars.join
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

puts "----------"


#Challenge 3 - # DEBUG:






#SOLUTION

def factorial(n)
  product = n
  p "at the start product is #{product}"
  while n > 1
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
  product
end

factorial(5)

def palindromo?(str)
 if str.upcase == str.reverse.upcase
     puts %Q("Parabéns, a palavra #{str} é palíndromo")
 else
   puts %Q("A palavra #{str} não é palíndromo")
 end
end
puts "Digite uma palavra: "
palavra = gets.chomp
palindromo?
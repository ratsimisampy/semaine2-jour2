def apply_key(my_asc,my_key)
  #apply the key 
  shifted = my_asc + my_key
  p "new asc = #{shifted}"
end

def special_apply_key(my_asc,my_key)
	shifted = 96 + my_asc + (my_key - 122)
	p "new ascii after transf = #{shifted}"
end	

def chiffre_de_cesar(my_message, key)

  #transform into ascii code
  ascii = my_message.chars.map(&:ord)
  ascii.each { |x|
  if (x > 96 && x < (122 - key)) || (x > 65 && x < (90 - key))
  	p x
  	p key
  	apply_key(x,key)
  elsif (x > (122 - key)) || (x > (90 - x)) #out of range
    p x
    p key
    p "go special"   
  	special_apply_key(x,key)
  else
  	p "toto"
  end
  }
  
  
  #reverse frm ascii code to char
  #result = shifted.map{|c| c.chr }.join
#p result
end

chiffre_de_cesar("Z", 4)
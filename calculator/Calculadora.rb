#Calculadora.rb
class Calculadora
  def suma(a, b)
    a + b
  end

  def resta(a, b)
  	a - b
  end

  def multiplica(a, b)
  	a * b
  end
 
  def not_zero(g)
    g != 0
  end	

  def divide(numerador, denominador)
  	not_zero(denominador) ? numerador / denominador : 0

  	# if not_zero(denominador)==true{
  	#     return numerador/denominador
  	#   }else{
   #      return 0
  	#   }
   #  }
  end
 
end
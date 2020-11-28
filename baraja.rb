require_relative 'carta'

class Baraja
    attr_accessor :cartas 
    #constructor generando los numero y pintas
        def initialize
            cartas = [*1..13].product(['C', 'D', 'E', 'T'])
            @cartas = cartas
        end
    #bajarea el arreglo
        def barajar
            cartas.shuffle!  
        end
    #sacar la primera carta del arreglo 
        def sacar
            cartas.shift
        end
    #reparte las 5 cartas del arreglo 
        def repartir
            cartas[0..4]
        end

end

barajas = Baraja.new
#se baraja las cartas
print barajas.barajar
#se saca la primera carta del mazo por lo tanto se elimina el registro 
puts barajas.sacar
#y agarra las siguientes 5 cartas de la baraja
print barajas.repartir
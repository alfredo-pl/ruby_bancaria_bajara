class Usuario
    attr_accessor :nombre, :cuentas
    #constructor
    def initialize(nombre, cuentas = nil)
        @nombre = nombre
        @cuentas = []
        @cuentas<< cuentas
    end

    def saldo_total
        cuentas.map{|cuenta| cuenta.saldo }.sum
    end

end
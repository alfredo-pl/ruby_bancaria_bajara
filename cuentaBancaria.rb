class CuentaBancaria
    attr_accessor :banco, :numero_cuenta , :saldo 
    #constructor
    def initialize(banco, numero_cuenta, saldo = 0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end
    
    def transferir(monto, cuenta)
        raise RangeError, "Monto excedido su capacidad" if self.saldo < monto
        self.saldo -= monto    
        cuenta.saldo += monto

    end
end
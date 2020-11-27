require_relative 'cuentaBancaria'
require_relative 'usuario'

cuenta1 = CuentaBancaria.new('Banquito', '12345678',5000 )
cuenta2 = CuentaBancaria.new('BanKo', '112678', 5000 )
usuario = Usuario.new('alfredo', cuenta1  )
usuario.cuentas<<cuenta2
puts usuario.saldo_total
cuenta2.transferir(5000,cuenta1)
puts cuenta2.saldo
puts cuenta1.saldo
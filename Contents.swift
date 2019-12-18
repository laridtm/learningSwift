//import UIKit

//banco

class Correntista {
    var nome:String
    var conta:Int
    var saldo:Double
    
    init(nome: String, conta: Int, saldo: Double) {
        self.nome = nome
        self.conta = conta
        self.saldo = saldo
    }
}

var correntistas: [Correntista] = []

func abrirConta(nome: String, conta:Int, saldo:Double){
    var correntista = Correntista(nome: nome, conta: conta, saldo: saldo)
    correntistas.append(correntista)
}

abrirConta(nome: "Deivid Vitor", conta: 111, saldo: 100.00)

func depositar(conta:Int , valor:Double) {
    for (i, correntista) in correntistas.enumerated() {
        if (conta == correntista.conta) {
            correntista.saldo += valor
            print("Seu novo saldo é: \(correntista.saldo)")
        }
    }
}

depositar(conta: 111, valor: 50)

func sacar(conta:Int , valor:Double) {
    for (i, correntista) in correntistas.enumerated() {
           if (conta == correntista.conta) {
               correntista.saldo -= valor
               print("\(correntista.nome) seu novo saldo é: \(correntista.saldo)")
           }
       }
}

func consultaSaldo(conta:Int) {
    for (i,correntista) in correntistas.enumerated() {
        if (conta == correntista.conta) {
            print("\(correntista.nome) seu saldo é: \(correntista.saldo)")
        }
    }
}

func transferir(conta1:Int, conta2:Int, valor:Double) {
    for (i,correntista) in correntistas.enumerated() {
        if (conta1 == correntista.conta) {
            correntista.saldo -= valor
             print("Transferência realizada com sucesso. Seu novo saldo é: \(correntista.saldo)")
        }
        if (conta2 == correntista.conta) {
            correntista.saldo += valor
        }
    }
}

sacar(conta: 111, valor: 100)
depositar(conta: 111, valor: 200)
sacar(conta: 111, valor: 120)

abrirConta(nome: "Larissa Diniz", conta: 222, saldo: 50000)
abrirConta(nome: "Maria Aparecida", conta: 333, saldo: 1500)
abrirConta(nome: "Rodrigo Martins", conta: 444, saldo: 100.50)
abrirConta(nome: "Jaodfen Rian", conta: 555, saldo: 200)

sacar(conta: 222, valor: 50000)
depositar(conta: 333, valor: 2000)
sacar(conta: 444, valor: 50)
sacar(conta: 555, valor: 120)

consultaSaldo(conta: 222)

transferir(conta1: 333, conta2: 222, valor: 3000)
consultaSaldo(conta: 222)

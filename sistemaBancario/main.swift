var minhaConta = Conta(titular: "Alexandre", saldo: 100)
let admin = Banco()

let teste1 = Conta(titular: "Teste1", saldo: 100)
print(teste1.idConta)
let teste2 = Conta(titular: "Teste2", saldo: 99999)
print(teste2.idConta)

admin.listaContas.append(teste1)
admin.listaContas.append(teste2)

while true{
    print("LOGIN: ", terminator: "")
    if let login = readLine(), login.count == 5{
        if login == "*****"{
            print("\nOLÁ, ADMIN!", terminator: "")
            menuAdmin()
        }
        else {
            let cliente = admin.permitirLogin(login)
            if let cliente{
                print("\nOLÁ, \(cliente.titular.uppercased())!", terminator: "")
                menuCliente(cliente)
            }
            else{
                print(">>> USUÁRIO NÃO ENCONTRADO!\n")
            }
        }
    }
    else{
        print(">>> LOGIN INVÁLIDO!\n")
    }
}


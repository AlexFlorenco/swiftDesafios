func menuAdmin(){
    while true{
        print("\n1 - ABRIR NOVA CONTA\n2 - ENCERRAR CONTA\n3 - LISTAR CONTAS\n0 - SAIR\n> ", terminator: "")
        if let operacao = readLine(){
            switch operacao{
            case "0":
                print("\nATÉ LOGO!\n")
                return
                
            case "1":
                while true{
                    print("\nNOME DO TITULAR: ", terminator: "")
                    if let nomeTitular = readLine(), nomeTitular.count >= 3{
                        while true{
                            print("\nVALOR INICIAL DA CONTA: ", terminator: "")
                            if let saldoInicial = readLine(), let saldoInicialFloat = Float(saldoInicial), saldoInicialFloat >= 0{
                                admin.abrirConta(titular: nomeTitular, saldo: saldoInicialFloat)
                                break
                            }
                            else{
                                print(">>> VALOR INVÁLIDO!")
                            }
                        }
                        break
                    }
                    else{
                        print(">>> NOME INVÁLIDO!")
                    }
                }
                
            case "2":
                if admin.listaContas.isEmpty{
                    print(">>> NENHUM CLIENTE CADASTRADO!")
                }
                while true{
                    print("\nNo DA CONTA: ", terminator: "")
                    if let idConta = readLine(), idConta.count == 5{
                        admin.fecharConta(idConta)
                        break
                    }
                    else{
                        print(">>> CONTA INVÁLIDA!")
                    }
                }
            
            case "3":
                if admin.listaContas.isEmpty{
                    print(">>> NENHUM CLIENTE CADASTRADO!")
                }
                else{
                    print("\nNo DA CONTA\t\tCLIENTE\t\t\t\t\tSALDO")
                    for cliente in admin.listaContas{
                        print("\(cliente.idConta)\t\t\t\(cliente.titular)\t\t\t\t\t\(cliente.saldo)")
                    }
                }
            default:
                print(">>> OPERAÇÃO INVÁLIDA!")
            }
        }
    }
}

func menuCliente(_ cliente: Conta){
    while true{
        print("\n1 - TRANSFERÊNCIA\n2 - SAQUE\n3 - SALDO\n0 - SAIR\n> ", terminator: "")
        if let operacao = readLine(){
            switch operacao{
            case "0":
                print("\nATÉ LOGO!\n")
                return
                
            case "1":
                cliente.solicitarTransferencia()
                
            case "2":
                while true{
                    print("\nVALOR DO SAQUE: ", terminator: "")
                    if let valorSaque = readLine(), let valorSaqueInt = Int(valorSaque), valorSaqueInt%20 == 0{
                        cliente.sacar(valorSaqueInt)
                        break
                    }
                    else{
                        print(">>> O VALOR DEVE SER MÚLTIPLO DE 20!")
                    }
                }
            case "3":
                print("\nSALDO: \(cliente.saldo)")
            default:
                print(">>> OPERAÇÃO INVÁLIDA!")
            }
        }
    }
}

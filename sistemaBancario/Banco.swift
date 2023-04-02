class Banco{
    var listaContas = [Conta]()
    
    func abrirConta(titular: String, saldo: Float){
        let instanciaConta = Conta(titular: titular, saldo: saldo)
        listaContas.append(instanciaConta)
        print("\n--------------------------")
        print("CONTA CRIADA COM SUCESSO!\n")
        print("No DA CONTA: \(instanciaConta.idConta)\nTITULAR: \(instanciaConta.titular)\nSALDO: \(instanciaConta.saldo)")
        print("--------------------------")
        return
    }
    
    func fecharConta(_ idConta: String){
        for (index, conta) in listaContas.enumerated(){
            if conta.idConta == idConta{
                listaContas.remove(at: index)
                print(">>> CONTA ENCERRADA COM SUCESSO!")
                return
            }
        }
        print(">>> CONTA NÃO ENCONTRADA!")
    }
    
    func permitirLogin(_ login: String) -> Conta?{
        for conta in listaContas{
            if conta.idConta == login{
                return conta
            }
        }
        return nil
        
    }
    
    func transferir(_ valorTransferencia: Float, _ contaDestino: String) -> Bool{
        for conta in admin.listaContas{
            if conta.idConta == contaDestino{
                while true{
                    print("TRANSFERINDO R$\(valorTransferencia) À \(conta.titular)\n\n1 - CONFIRMAR\n2 - CANCELAR\n> ", terminator: "")
                    if let confirmacao = readLine(){
                        switch confirmacao{
                        case "1":
                            conta.saldo += valorTransferencia
                            print(">>> TRANSFERÊNCIA REALIZADA COM SUCESSO!")
                            return true
                            
                        case "2":
                            print(">>> OPERAÇÃO CANCELADA!")
                            return false
                            
                        default:
                            print(">>> OPÇÃO INVÁLIDA!")
                        }
                    }
                }
            }
        }
        print(">>> CONTA DE DESTINO NÃO LOCALIZADA!")
        return false
    }
}

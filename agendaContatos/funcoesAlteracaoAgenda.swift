func adicionarNovoContato(){
    print("\nNome: ", terminator: "")
    if let nome = readLine(), nome.count >= 3{
        while true{
            print("\nTelefone: ", terminator: "")
            if let telefone = readLine(), telefone.count == 11{
                while true{
                    print("\nE-mail: ", terminator: "")
                    if let email = readLine(), email.count >= 11 && email.contains("@") && email.contains("."){
                        let instanciaContato = Contato(nome: nome, telefone: telefone, email: email)
                        agenda.append(instanciaContato)
                        print("\n>>> CONTATO ADICIONADO COM SUCESSO!")
                        break
                    }
                    else{
                        print(">>> E-MAIL INVÁLIDO!")
                    }
                }
                break
            }
            else{
                print(">>> TELEFONE INVÁLIDO!")
            }
        }
    }
    else{
        print(">>> NOME INVÁLIDO!")
        adicionarNovoContato()
    }
}


func removerContato(){
    if verificarAgendaVazia(){
        return
    }
    
    print("\nCONTATO A SER EXCLUÍDO: ", terminator: "")
    if let contatoASerExcluido = readLine(){
        for (index, contato) in agenda.enumerated(){
            if contato.nome.uppercased() == contatoASerExcluido.uppercased(){
                agenda.remove(at: index)
                print("\n>>> CONTATO REMOVIDO COM SUCESSO!")
                return
            }
        }
    }
    print(">>> CONTATO NÃO ENCONTRADO!")
}


func editarContato(){
    if verificarAgendaVazia(){
        return
    }
    
    print("\nCONTATO A SER EDITADO: ", terminator: "")
    if let contatoASerEditado = readLine(){
        for contato in agenda{
            if contato.nome.uppercased() == contatoASerEditado.uppercased(){
                print("\nQUAL INFORMAÇÃO VOCÊ DESEJA EDITAR?")
                print("1 - NOME: \(contato.nome)\n2 - TELEFONE: \(contato.telefone)\n3 - E-MAIL: \(contato.email)")
                
                while true{
                    print("> ", terminator: "")
                    if let informacaoAEditar = readLine(){
                        switch informacaoAEditar{
                        case "1":
                            while true {
                                print("NOVO NOME: ", terminator: "")
                                if let novoNome = readLine(), novoNome.count >= 3{
                                    contato.nome = novoNome
                                    print(">>> CONTATO EDITADO COM SUCESSO!")
                                    return
                                }
                                else{
                                    print(">>> NOME INVÁLIDO!\n")
                                }
                            }
                        case "2":
                            while true {
                                print("NOVO TELEFONE: ", terminator: "")
                                if let novoTelefone = readLine(), novoTelefone.count == 11{
                                    contato.telefone = novoTelefone
                                    print(">>> CONTATO EDITADO COM SUCESSO!")
                                    return
                                }
                                else{
                                    print(">>> TELEFONE INVÁLIDO!\n")
                                }
                            }
                        case "3":
                            while true {
                                print("NOVO E-MAIL: ", terminator: "")
                                if let novoEmail = readLine(), novoEmail.count >= 11 && novoEmail.contains("@") && novoEmail.contains("."){
                                    contato.email = novoEmail
                                    print(">>> CONTATO EDITADO COM SUCESSO!")
                                    return
                                }
                                else{
                                    print(">>> E-MAIL INVÁLIDO!\n")
                                }
                            }
                        default:
                            print(">>> OPÇÃO INVÁLIDA!\n")
                        }
                    }
                }
            }
        }
    }
    print(">>> CONTATO NÃO ENCONTRADO!")
    return
}

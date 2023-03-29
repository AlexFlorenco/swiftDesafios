func cadastroDePaciente(){
    while true {
        print("\nNOME DO PACIENTE: ", terminator: "")
        if let nome = readLine(), nome.count >= 3{
            while true {
                print("\nANO DE NASCIMENTO: ", terminator: "")
                var tipo = String()
                if let ano = readLine(), let anoInt = Int(ano), anoInt > 1900, anoInt <= 2023 {
                    switch 2023 - anoInt {
                    case ..<18:
                        tipo = "CRIANÇA"
                    case 18..<60:
                        tipo = "ADULTO"
                    default:
                        tipo = "IDOSO"
                    }
                    
                    let instancia = Paciente(nome: nome.uppercased(), tipo: tipo)
                    instancia.senha = adicionarPacienteAFila(nome: instancia.nome, tipo: instancia.tipo)
                    print("\n------------------------------------")
                    print("BEM-VINDO(A), \(instancia.nome)! (\(instancia.tipo))\nSENHA: \(instancia.senha)\n\nAGUARDE QUE SUA SENHA SEJA CHAMADA!")
                    print("------------------------------------")
                    
                    break
                }
                else {
                    print(">>> ANO INVÁLIDO!")
                }
            }
            break
        }
        else {
            print(">>> NOME INVÁLIDO!")
        }
    }
}

func gerarSenha(_ ultimaSenha: inout String) -> String{
    let novaSenha = Int(ultimaSenha)! + 1
    ultimaSenha = String(novaSenha)
    return String(novaSenha)
}

func adicionarPacienteAFila(nome: String, tipo: String) -> String{
    if fila1.count <= fila2.count && fila1.count <= fila3.count{
        let senha = gerarSenha(&ultimaSenha)
        fila1.append([senha, nome, tipo])
        print("Adicinado a fila 1")
        return senha
    }
    
    else if fila2.count <= fila1.count && fila2.count <= fila3.count{
        let senha = gerarSenha(&ultimaSenha)
        fila2.append([senha, nome, tipo])
        print("Adicinado a fila 2")
        return senha
    }
    
    else if fila3.count <= fila1.count && fila3.count <= fila2.count{
        let senha = gerarSenha(&ultimaSenha)
        fila3.append([senha, nome, tipo])
        print("Adicinado a fila 3")
        return senha
    }
    
    else{
        return "0"
    }
}

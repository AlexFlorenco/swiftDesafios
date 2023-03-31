func cadastrarPaciente(){
    var tipo = String()
    
    print("\nNOME DO PACIENTE: ", terminator: "")
    
    if let nome = readLine(), nome.count >= 3{
        while true {
            print("\nANO DE NASCIMENTO: ", terminator: "")
            
            if let ano = readLine(), let anoInt = Int(ano), anoInt > 1900, anoInt <= 2023 {
                switch 2023 - anoInt {
                case ..<18:
                    tipo = "CRIANÇA"
                    
                case 18..<60:
                    tipo = "ADULTO"
                    
                default:
                    tipo = "IDOSO"
                }
                
                let instanciaPaciente = Paciente(nome: nome.uppercased(), tipo: tipo)
                instanciaPaciente.senha = gerarSenha()
                let fila = adicionarAFila(instanciaPaciente)
                print("\n------------------------------------")
                print("BEM-VINDO(A), \(instanciaPaciente.nome)! (\(instanciaPaciente.tipo))\nSENHA: \(instanciaPaciente.senha)\nFILA: \(fila)\n\nAGUARDE QUE SUA SENHA SEJA CHAMADA!")
                print("------------------------------------")
                
                break
            }
            else {
                print(">>> ANO INVÁLIDO!")
            }
        }
    }
    else {
        print(">>> NOME INVÁLIDO!")
        cadastrarPaciente()
    }
}

func adicionarAFila(_ paciente: Paciente) -> String{
    if fila1.count <= fila2.count && fila1.count <= fila3.count{
        fila1.append(paciente)
        return "1"
    }
    
    else if fila2.count <= fila1.count && fila2.count <= fila3.count{
        fila2.append(paciente)
        return "2"
    }
    
    else if fila3.count <= fila1.count && fila3.count <= fila2.count{
        fila3.append(paciente)
        return "3"
    }
    return "0"
}

func gerarSenha() -> String{
    ultimaSenha += 1
    return String(ultimaSenha)
}


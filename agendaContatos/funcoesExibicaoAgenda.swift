@available(macOS 13.0, *)
func buscarContato(){
    if verificarAgendaVazia(){
        return
    }
    
    print("BUSCAR POR NOME: ", terminator: "")
    var contatosEncontrados = [Contato]()
    if let busca = readLine(){
        for contato in agenda{
            if contato.nome.uppercased().contains(busca.uppercased()){
                contatosEncontrados.append(contato)
            }
        }
        
        if contatosEncontrados.isEmpty{
            print(">>> NENHUM RESULTADO ENCONTRADO!")
        }
        
        else{
            for contato in contatosEncontrados{
                print("NOME: \(contato.nome)\nTELEFONE: \(contato.telefone)\nE-MAIL: \(contato.email)")
            }
        }
    }
}

func listarOrdemAlfabetica(){
    if verificarAgendaVazia(){
        return
    }
    
    print("\nNOME\t\tTELEFONE\t\tEMAIL")
    for contato in agenda.sorted(by: { $0.nome.uppercased() < $1.nome.uppercased()}){
        print("\(contato.nome)\t\t\(contato.telefone)\t\t\(contato.email)")
    }
}

func verificarAgendaVazia() -> Bool{
    if agenda.isEmpty{
        print(">>> AGENDA VAZIA!")
        return true
    }
    return false
}

var agenda = [Contato]()

while true{
    print("\n1 - NOVO CONTATO\n2 - EXCLUIR CONTATO\n3 - EDITAR CONTATO\n4 - BUSCAR CONTATO\n5 - MOSTRAR AGENDA\n> ", terminator: "")
    
    if let operacao = readLine(){
        switch operacao{
        case "1":
            adicionarNovoContato()
        
        case "2":
            removerContato()
        
        case "3":
            editarContato()
            
//        case "4":
//            buscarContato()
//
        case "5":
            listarOrdemAlfabetica()
        
        default:
            print(">>> OPERAÇÃO INVÁLIDA!")
        }
    }
}

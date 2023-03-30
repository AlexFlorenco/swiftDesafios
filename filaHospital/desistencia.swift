func removerPacienteDaFila(){
    print("\nSENHA DO PACIENTE: ", terminator: "")
    
    if let senha = readLine(), let senhaInt = Int(senha), senhaInt <= ultimaSenha{
        for (index, paciente) in fila1.enumerated(){
            if paciente[0] == senha{
                fila1.remove(at: index)
                print("\nPACIENTE REMOVIDO!")
                return
            }
        }
        
        for (index, paciente) in fila2.enumerated(){
            if paciente[0] == senha{
                fila2.remove(at: index)
                print("\nPACIENTE REMOVIDO!")
                return
            }
        }
        
        for (index, paciente) in fila3.enumerated(){
            if paciente[0] == senha{
                fila3.remove(at: index)
                print("\nPACIENTE REMOVIDO!")
                return
            }
        }
        print(">>> PACIENTE JÁ ATENDIDO OU REMOVIDO!")
    }
    else{
        print(">>> SENHA AINDA NÃO GERADA!")
    }
}

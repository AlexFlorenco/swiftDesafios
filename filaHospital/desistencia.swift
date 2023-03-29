func removerPacienteDaFila(_ senha: String){
    for (index, paciente) in fila1.enumerated(){
        if paciente[0] == senha{
            fila1.remove(at: index)
            print("\nPACIENTE REMOVIDO!")
            return
        }
    }
    for (index, paciente) in fila2.enumerated(){
        if paciente[0] == senha{
            fila1.remove(at: index)
            print("\nPACIENTE REMOVIDO!")
            return
        }
    }
    for (index, paciente) in fila3.enumerated(){
        if paciente[0] == senha{
            fila1.remove(at: index)
            print("\nPACIENTE REMOVIDO!")
            return
        }
    }
    print(">>> PACIENTE NÃO ENCONTRADO")
}

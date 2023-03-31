func mostrarFilas(){
    print("\nFila 1:")
    for paciente in fila1{
        print("\(paciente.nome) (\(paciente.tipo)), ", terminator: "")
    }
    
    print("\n\nFila 2:")
    for paciente in fila2{
        print("\(paciente.nome) (\(paciente.tipo)), ", terminator: "")
    }
    
    print("\n\nFila 3:")
    for paciente in fila3{
        print("\(paciente.nome) (\(paciente.tipo)), ", terminator: "")
    }
    
}

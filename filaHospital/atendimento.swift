func buscarPrioridade(_ fila: inout Array<Paciente>) -> Paciente?{
    for (index, paciente) in fila.enumerated(){
        if paciente.tipo == "IDOSO"{
            fila.remove(at: index)
            return paciente
        }
    }
    for (index, paciente) in fila.enumerated(){
        if paciente.tipo == "CRIANÇA"{
            fila.remove(at: index)
            return paciente
        }
    }
    return nil
}

func atenderPaciente(){
    print("\nCONSULTÓRIO (1, 2 OU 3): ", terminator: "")
    
    if let consultorio = readLine(){
        switch consultorio {
        case "0":
            return
            
        case "1":
            if fila1.isEmpty{
                print(">>> NÃO HÁ PACIENTES NA FILA!")
                return
            }
            
            let paciente = buscarPrioridade(&fila1)
            if  let paciente{
                print("\nSENHA: \(paciente.senha)\nPACIENTE: \(paciente.nome)\nCONSULTÓRIO: 1")
            }
            else {
                print("\nSENHA: \(fila1[0].senha)\nPACIENTE: \(fila1[0].nome)\nCONSULTÓRIO: 1")
                fila1.remove(at: 0)
            }
            
        case "2":
            if fila2.isEmpty{
                print(">>> NÃO HÁ PACIENTES NA FILA!")
                return
            }
            
            let paciente = buscarPrioridade(&fila2)
            if  let paciente{
                print("\nSENHA: \(paciente.senha)\nPACIENTE: \(paciente.nome)\nCONSULTÓRIO: 1")
            }
            else {
                print("\nSENHA: \(fila2[0].senha)\nPACIENTE: \(fila2[0].nome)\nCONSULTÓRIO: 1")
                fila2.remove(at: 0)
            }
            
        case "3":
            if fila3.isEmpty{
                print(">>> NÃO HÁ PACIENTES NA FILA!")
                return
            }
            
            let paciente = buscarPrioridade(&fila3)
            if  let paciente{
                print("\nSENHA: \(paciente.senha)\nPACIENTE: \(paciente.nome)\nCONSULTÓRIO: 1")
            }
            else {
                print("\nSENHA: \(fila3[0].senha)\nPACIENTE: \(fila3[0].nome)\nCONSULTÓRIO: 1")
                fila3.remove(at: 0)
            }
            
        default:
            print(">>> CONSULTÓRIO INVÁLIDO!")
            atenderPaciente()
        }
    }
}

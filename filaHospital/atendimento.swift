func buscarPrioridade(_ fila: inout Array<Array<String>>) -> Array<String>{
    for (index, paciente) in fila.enumerated(){
        if paciente[2] == "IDOSO"{
            fila.remove(at: index)
            return paciente
        }
    }
    for (index, paciente) in fila.enumerated(){
        if paciente[2] == "CRIANÇA"{
            fila.remove(at: index)
            return paciente
        }
    }
    return []
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
            if  paciente.isEmpty{
                print("\nSENHA: \(fila1.first![0])\nPACIENTE: \(fila1.first![1])\nCONSULTÓRIO: 1")
                fila1.remove(at: 0)
            }
            else {
                print("\nSENHA: \(paciente[0])\nPACIENTE: \(paciente[1])\nCONSULTÓRIO: 1")
            }
            
        case "2":
            if fila2.isEmpty{
                print(">>> NÃO HÁ PACIENTES NA FILA!")
                return
            }
            
            let paciente = buscarPrioridade(&fila2)
            if  paciente.isEmpty{
                print("\nSENHA: \(fila2.first![0])\nPACIENTE: \(fila2.first![1])\nCONSULTÓRIO: 2")
                fila2.remove(at: 0)
            }
            else {
                print("\nSENHA: \(paciente[0])\nPACIENTE: \(paciente[1])\nCONSULTÓRIO: 2")
            }
            
        case "3":
            if fila3.isEmpty{
                print(">>> NÃO HÁ PACIENTES NA FILA!")
                return
            }
            
            let paciente = buscarPrioridade(&fila3)
            if  paciente.isEmpty{
                print("\nSENHA: \(fila3.first![0])\nPACIENTE: \(fila3.first![1])\nCONSULTÓRIO: 3")
                fila3.remove(at: 0)
            }
            else {
                print("\nSENHA: \(paciente[0])\nPACIENTE: \(paciente[1])\nCONSULTÓRIO: 3")
            }
            
        default:
            print(">>> CONSULTÓRIO INVÁLIDO!")
            atenderPaciente()
        }
    }
}

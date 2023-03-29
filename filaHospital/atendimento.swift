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
    return ["0"]
}

func atenderPaciente(_ consultorio: String){
    if consultorio == "1"{
        let paciente = buscarPrioridade(&fila1)
        if  paciente == ["0"]{
            print("\nSENHA: \(fila1.first![0])\nPACIENTE: \(fila1.first![1])\nCONSULTÓRIO: 1")
            fila1.remove(at: 0)
        }
        else {
            print("\nSENHA: \(paciente[0])\nPACIENTE: \(paciente[1])\nCONSULTÓRIO: 1")

        }
    }
    else if consultorio == "2"{
        let paciente = buscarPrioridade(&fila2)
        if  paciente == ["0"]{
            print("\nSENHA: \(fila2.first![0])\nPACIENTE: \(fila2.first![1])\nCONSULTÓRIO: 2")
            fila2.remove(at: 0)
        }
        else {
            print("\nSENHA: \(paciente[0])\nPACIENTE: \(paciente[1])\nCONSULTÓRIO: 2")

        }
    }
    else if consultorio == "3"{
        let paciente = buscarPrioridade(&fila3)
        if  paciente == ["0"]{
            print("\nSENHA: \(fila3.first![0])\nPACIENTE: \(fila3.first![1])\nCONSULTÓRIO: 3")
            fila3.remove(at: 0)
        }
        else {
            print("\nSENHA: \(paciente[0])\nPACIENTE: \(paciente[1])\nCONSULTÓRIO: 3")

        }
    }
}

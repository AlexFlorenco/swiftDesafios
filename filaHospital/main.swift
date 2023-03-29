import filaHospital

var ultimaSenha = "8"
//var fila1 = [[String]]()
//var fila2 = [[String]]()
//var fila3 = [[String]]()
var fila1 = [["1", "Alex", "CRIANÇA"], ["4", "Nerice", "IDOSO"] ]
var fila2 = [["2", "Igor", "ADULTO"], ["5", "João", "ADULTO"], ["7", "Ana", "IDOSO"]]
var fila3 = [["3", "Jose", "IDOSO"], ["6", "Maria", "ADULTO"], ["8", "Jonas", "ADULTO"]]
var pacientes = Dictionary <Int, String>()

while true{
    print("\n1 - NOVO PACIENTE\n2 - PRÓXIMO ATENDIMENTO\n3 - DESISTÊNCIA\n4 - MOSTRAR FILAS\n> ", terminator: "")
    if let operacao = readLine(){
        switch operacao {
        case "1":
            cadastroDePaciente()
            
        case "2":
            while true{
                print("\nCONSULTÓRIO (1, 2 OU 3): ", terminator: "")
                if let consultorio = readLine(), consultorio == "1" || consultorio == "2" || consultorio == "3"{
                    atenderPaciente(consultorio)
                    break
                }
                else{
                    print(">>> CONSULTÓRIO INVÁLIDO!")
                }
                    
            }
            
        case "3":
            while true{
                print("\nSENHA DO PACIENTE: ", terminator: "")
                if let senha = readLine(), senha <= ultimaSenha{
                    removerPacienteDaFila(senha)
                    break
                }
                else{
                    print(">>> SENHA AINDA NÃO GERADA!")

                }
                
            }
            
        case "4":
            print("\nFila 1: \(fila1)")
            print("Fila 2: \(fila2)")
            print("Fila 3: \(fila3)")
            
        default:
            print(">>> OPERAÇÃO INVÁLIDA!")
        }
    }
    
}

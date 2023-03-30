import filaHospital

//var ultimaSenha = 0
//var fila1 = [[String]]()
//var fila2 = [[String]]()
//var fila3 = [[String]]()

var ultimaSenha = 9
var fila1 = [["1", "Igor", "ADULTO"], ["4", "João", "IDOSO"], ["7", "Ana", "CRIANÇA"]]
var fila2 = [["2", "Alex", "ADULTO"]]
var fila3 = [["3", "Jose", "IDOSO"], ["6", "Maria", "ADULTO"], ["9", "Jonas", "IDOSO"]]

while true{
    print("\n1 - NOVO PACIENTE\n2 - PRÓXIMO ATENDIMENTO\n3 - DESISTÊNCIA\n4 - MOSTRAR FILAS\n> ", terminator: "")
    if let operacao = readLine(){
        switch operacao {
        case "1":
            cadastrarPaciente()
            
        case "2":
            atenderPaciente()
            
        case "3":
            removerPacienteDaFila()
            
        case "4":
            print("\nFila 1: \(fila1)\nFila 2: \(fila2)\nFila 3: \(fila3)")
            
        default:
            print(">>> OPERAÇÃO INVÁLIDA!")
        }
    }
}

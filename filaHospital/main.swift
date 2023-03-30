import filaHospital

var ultimaSenha = 0
var fila1 = [[String]]()
var fila2 = [[String]]()
var fila3 = [[String]]()

//var fila1 = [["1", "Alex", "CRIANÇA"], ["4", "Nerice", "IDOSO"] ]
//var fila2 = [["2", "Igor", "ADULTO"], ["5", "João", "ADULTO"], ["7", "Ana", "IDOSO"]]
//var fila3 = [["3", "Jose", "IDOSO"], ["6", "Maria", "ADULTO"], ["8", "Jonas", "ADULTO"]]

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

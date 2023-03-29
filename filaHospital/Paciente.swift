class Paciente{
    let nome: String
    let tipo: String
    var senha: String
    
    init(nome: String, tipo: String, senha: String = "0") {
        self.nome = nome
        self.tipo = tipo
        self.senha = senha
    }
}

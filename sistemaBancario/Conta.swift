class Conta: Banco{
    let idConta = String(Int.random(in: 10000...99999))
    let titular: String
    var saldo: Float
    
    init(titular: String, saldo: Float) {
        self.titular = titular
        self.saldo = saldo
    }
    
    func solicitarTransferencia(){
        print("\nVALOR DA TRANSFERÊNCIA: ", terminator: "")
        if let valorTransferencia = readLine(), let valorTransferenciaFloat = Float(valorTransferencia), verificarValorPositivoESaldoSuficiente(valorTransferenciaFloat){
            while true {
                print("\nNo DA CONTA DE DESTINO: ", terminator: "")
                if let contaDestino = readLine(), contaDestino.count == 5{
                    if transferir(valorTransferenciaFloat, contaDestino){
                        saldo -= valorTransferenciaFloat
                        break
                    }
                    break
                }
                print(">>> NÚMERO INVÁLIDO!")
            }
        }
        else{
            solicitarTransferencia()
        }
    }
    
    func sacar(_ valorSaque: Int){
        if !verificarValorPositivoESaldoSuficiente(Float(valorSaque)){
            return
        }
        saldo -= Float(valorSaque)
        print(">>> SAQUE REALIZADO COM SUCESSO!")
    }
    
    func depositar(_ valorDeposito: Float){
        if !verificarValorPositivoESaldoSuficiente(valorDeposito){
            return
        }
        
        saldo += valorDeposito
        print(">>> VALOR DEPOSITADO COM SUCESSO!\nSALDO ATUAL: \(saldo)")
    }
    
    private func verificarValorPositivoESaldoSuficiente(_ valorAVerificar: Float) -> Bool{
        if valorAVerificar <= 0{
            print(">>> VALOR INVÁLIDO!")
            return false
        }
        
        if saldo < valorAVerificar{
            print(">>> SALDO INSUFICIENTE!")
            return false
        }
        return true
    }
}

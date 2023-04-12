programa {
    cadeia estadoOlho = "Fechado"
    cadeia posicao = "Deitado"
    cadeia estado = "Dormindo"
    cadeia comodo = "Quarto"
    
    funcao mudancaEstado(cadeia estado) {
        se(estado == "Dormindo") {
            posicao = "Deitado"
            estadoOlho = "Fechado"
        } senao {
            posicao = "De pé"
            estadoOlho = "Aberto"
        }
    }
    
    funcao acordar() {
        estado = "Acordado"
        mudancaEstado(estado)
    }
    
    funcao dormir() {
        estado = "Dormindo"
        mudancaEstado(estado)
    }
    
    funcao hora(inteiro horaAtual) {
        se (horaAtual >= 22 e horaAtual <= 6) {
           dormir()
        } senao {
           acordar()
        }
    }
    
    funcao cadeia escovarDente(cadeia estado, cadeia comodo) {
        se (estado == "Acordado" e comodo == "Banheiro") {
            retorne "Escovando dente"
        } senao {
            retorne "Você não pode escovar os dentes"
        }
    }
    
    funcao cadeia deslocar(cadeia posicaoInicial, cadeia posicaoFinal, cadeia estado) {
        se(estado != "Acordado") {
            retorne "Você não é sonambulo."
        }
        se(posicaoInicial == posicaoFinal) {
            retorne "Você já está onde você quer chegar."
        } senao {
            comodo = posicaoFinal
            retorne "Deslocando-se para " + posicaoFinal + "\n"
        }
    }
    
    funcao inicio() {
        hora(8)
        escreva(deslocar(comodo, "Banheiro", estado))
        escreva(escovarDente(estado, comodo))
    }
}

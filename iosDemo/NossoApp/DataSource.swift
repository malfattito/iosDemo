//
//  DataSource.swift
//  NossoApp
//
//  Created by pat002900 on 23/09/21.
//

import Foundation

class DataSource {
    var contatos = [Contato]()
    
    init() {
        contatos = []
    }
    func buscaWebService()->[Contato]{
        contatos.append(Contato(nome: "Tales", telefone: "(63) 99116-0029"))
        contatos.append(Contato(nome: "Rafel", telefone: "(63) 99116-0029"))
        contatos.append(Contato(nome: "Lucas", telefone: "(63) 99116-0029"))
        contatos.append(Contato(nome: "Jhemys", telefone: "(63) 99116-0029"))
        contatos.append(Contato(nome: "Silvano", telefone: "(63) 99116-0029"))
        return contatos
    }
}





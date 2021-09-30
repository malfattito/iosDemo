//
//  DataSource.swift
//  NossoApp
//
//  Created by Silvano Malfatti on 23/09/21.
//

import Foundation

class DataSource
{
    var contatos = [Contato]()
    
    init()
    {
        contatos = []
    }
    
    func buscaWebService()->[Contato]
    {
        contatos.append(Contato(nome:"Silvano", telefone: "2233222"))
        contatos.append(Contato(nome:"Talles", telefone: "23334442"))
        contatos.append(Contato(nome:"Lucas", telefone: "2556722"))
        contatos.append(Contato(nome:"Rafael", telefone: "76949422"))
        contatos.append(Contato(nome:"Jhemys", telefone: "94439304"))
        
        return contatos
    }
}

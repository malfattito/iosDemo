//
//  ViewController3.swift
//  NossoApp
//
//  Created by pat002900 on 23/09/21.
//

import UIKit

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var dataSource = DataSource()
    var contatos = [Contato]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contatos = dataSource.buscaWebService()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contatos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! MyCell
        celula.lblNome.text = contatos[indexPath.row].nome
        celula.lblTelefone.text = contatos[indexPath.row].telefone
        return celula
    }
    
}


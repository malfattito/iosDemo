//
//  ViewController2.swift
//  NossoApp
//
//  Created by Silvano Malfatti on 26/08/21.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBAction func returnButton(_ sender: Any) {
        self.dismiss(animated: true) {
            print("Voltando para Home")
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("TELA 2 - FOI CARREGADA")
    }
    
    override func viewWillAppear(_ animated:Bool)
    {
        super.viewWillAppear(animated)
        print("TELA 2 - SERA APRESENTADA EM BREVE")
    }
    
    override func viewDidAppear(_ animated:Bool)
    {
        super.viewDidAppear(animated)
        print("TELA 2 - JÁ ESTÁ VISÍVEL")
    }
    
    override func viewWillDisappear(_ animated:Bool)
    {
        super.viewWillDisappear(animated)
        print("TELA 2 - SERÁ RETIRADA EM BREVE")
    }
    
    override func viewDidDisappear(_ animated:Bool)
    {
        super.viewDidDisappear(animated)
        print("TELA 2 - JÁ FOI RETIRADA")
    }

}

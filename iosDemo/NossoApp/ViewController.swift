//
//  ViewController.swift
//  NossoApp
//
//  Created by Silvano Malfatti on 26/08/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var txfIdade: UITextField!
    @IBOutlet weak var sldBarra: UISlider!
    @IBOutlet weak var lblIdade: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        txfIdade.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        lblIdade.text = txfIdade.text
        
        txfIdade.resignFirstResponder()
        
        return true
    }
    
    @IBAction func finalizaCampoTexto(_ sender: UITextField)
    {
        lblIdade.text = txfIdade.text
    }
    @IBAction func switchValue(_ sender: UISwitch)
    {
        sldBarra.isEnabled = sender.isOn
        
        if (!sender.isOn)
        {
            sldBarra.tintColor = .lightGray
        }
        else
        {
            sldBarra.tintColor = .link
        }
    }
    @IBAction func executaBarraValores(_ sender: UISlider)
    {
        print(sender.value)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("TELA 1 - FOI CARREGADA")
    }
    
    @IBAction func chamaTela2(_ sender: Any)
    {
        let tela2 = self.storyboard?.instantiateViewController(identifier: "tela2")
        
        if (tela2 != nil)
        {
            tela2!.modalPresentationStyle = .fullScreen
            tela2!.modalTransitionStyle = .flipHorizontal
            self.present(tela2!, animated: true, completion: nil)
        }
        else
        {
            
        }
    }
    
    override func viewWillAppear(_ animated:Bool)
    {
        super.viewWillAppear(animated)
        print("TELA 1 - SERA APRESENTADA EM BREVE")
    }
    
    override func viewDidAppear(_ animated:Bool)
    {
        super.viewDidAppear(animated)
        print("TELA 1 - JÁ ESTÁ VISÍVEL")
        txfIdade.delegate = self
    }
    
    override func viewWillDisappear(_ animated:Bool)
    {
        super.viewWillDisappear(animated)
        print("TELA 1 - SERÁ RETIRADA EM BREVE")
    }
    
    override func viewDidDisappear(_ animated:Bool)
    {
        super.viewDidDisappear(animated)
        print("TELA 1 - JÁ FOI RETIRADA")
    }
}


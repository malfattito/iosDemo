//
//  ViewController.swift
//  NossoApp
//
//  Created by Silvano Malfatti on 26/08/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var textfild: UITextField!
    @IBOutlet weak var barra: UISlider!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelTextinho: UILabel!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textfild.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        labelTextinho.text = textfild.text
        textfild.resignFirstResponder()
        return true
    }
    
    
    @IBAction func executaBarra(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func swithValue(_ sender: UISwitch) {
        barra.isEnabled = sender.isOn
        
        if (!sender.isOn){
            
            barra.tintColor = .gray
        }else{
            barra.tintColor = .systemBlue
        }
    }
    
    
    @IBAction func tela2(_ sender: Any) {
        let tela2 = self.storyboard?.instantiateViewController(identifier: "tela2")
        
        
        if (tela2 != nil){
            //tela2?.modalPresentationStyle = .fullScreen
            tela2?.modalTransitionStyle = .crossDissolve
            self.present(tela2!, animated: true, completion: nil)
        }
        print("Indo para tela 2")
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("TELA 1 - FOI CARREGADA")
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
        textfild.delegate = self
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


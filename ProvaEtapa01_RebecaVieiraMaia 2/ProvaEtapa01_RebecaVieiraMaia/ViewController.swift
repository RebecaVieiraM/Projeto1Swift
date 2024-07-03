//
//  ViewController.swift
//  ProvaEtapa01_RebecaVieiraMaia
//
//  Created by COTEMIG on 24/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    var idade : Float = 0.0
    
    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblIdade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblIdade.text = ""
    }
    
    @IBAction func aoAlterarIdade(_ sender: Any) {
        
        if let valor = (sender as? UISlider)?.value {
            self.lblIdade.text = "\(String(format: "%.0f",  valor)) anos"
            self.idade = valor
        }
    }
    
    
    @IBAction func gravarTapped(_ sender: Any) {
        
        if let nome = txtNome.text,
           let email = txtEmail.text,
           !nome.isEmpty && !email.isEmpty{
            let alert = UIAlertController(title: "Sucesso",
                                          message: "Nome: \(nome)\n E-mail: \(email)\n Idade: \(String(format: "%.0f",  idade))",
                                          preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            
            alert.addAction(action)
            
            present(alert, animated: true)
        }
    }
    
}

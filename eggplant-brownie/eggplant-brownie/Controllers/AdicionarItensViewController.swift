//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Matheus Prado on 30/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

//interface
protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {

    // MARK: - IBOutlets 
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: - Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBAction
    @IBAction func adicionarItem(_ sender: Any) {
        // navegar para tela anterior: navigationController.pop()
        // voltar para tela anterior: navigationController.push()
        
        guard let nome = nomeTextField.text, let calorias = caloriasTextField.text else {
            return
        }
        
        
        
        if let numeroDeCalorias: Double = Double(calorias){
            let item = Item(nome: nome, calorias: numeroDeCalorias)
            
            // MARK: Formas de trabalhar com Opcionais (optional chaning)
            //1:
//            if delegate == nil{
//                delegate!.add(item)
//            }
//            delegate!.add(item)
            
            // 2:
//            if delegate != nil {
//                delegate!.add(item)
//            }
            
            // 3:
            
//            if let delegate = delegate {
//                delegate.add(item)
//            }
            
            // 4:
            
//            guard let delegate = delegate else {
//                return
//            }
//            delegate.add(item)

            delegate?.add(item)
            
            
//            delegate?.add(item)
            navigationController?.popViewController(animated: true)
        }
        
    }
}

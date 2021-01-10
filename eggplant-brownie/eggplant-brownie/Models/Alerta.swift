//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Matheus Prado on 10/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import Foundation
import UIKit


class Alerta {
    
    let controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atenção", mensagem: String = "Ocorreu um erro") {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alerta.addAction(ok)
        controller.present(alerta, animated: true, completion: nil)
    }
}

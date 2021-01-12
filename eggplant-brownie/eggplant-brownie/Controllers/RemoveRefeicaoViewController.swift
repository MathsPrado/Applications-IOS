//
//  RemoveRefeicaoViewController.swift
//  eggplant-brownie
//
//  Created by Matheus Prado on 11/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class RemoveRefeicaoViewController{
    
    let controller: UIViewController
    init(controller: UIViewController){
        self.controller = controller
    }
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction)-> Void){
        let alerta = UIAlertController(title: refeicao.nome, message: refeicao.detalhes(), preferredStyle: .alert)
        let botaoCancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        alerta.addAction(botaoCancelar)
        let botaoRemover = UIAlertAction(title: "Remover", style: .destructive, handler: handler)
        alerta.addAction(botaoRemover)
        controller.present(alerta, animated: true) {
            //depois que foi exibido
        }
    }
}

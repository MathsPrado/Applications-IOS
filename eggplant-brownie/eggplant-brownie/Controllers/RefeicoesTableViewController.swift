//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Ândriu Coelho on 17/04/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit


class RefeicoesTableViewController: UITableViewController, AdicionaRefeicaoDelegate {

    var refeicoes = [Refeicao(nome: "Beringela", felicidade: 5),
                     Refeicao(nome: "Macarrão", felicidade: 3),
                     Refeicao(nome: "Comida Japo", felicidade: 3, itens: [])]

    // MARK: - UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let linha = indexPath.row

        let refeicao = refeicoes[linha]

        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = refeicao.nome

        return cell
    }
    
    func Add(_ refeicao: Refeicao){ 
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "adicionar" {
            if let viewController = segue.destination as? ViewController {
                viewController.delegate = self
            }
        }
    }
}

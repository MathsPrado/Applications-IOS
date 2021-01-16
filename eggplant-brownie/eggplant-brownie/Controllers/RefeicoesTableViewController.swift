//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Ândriu Coelho on 17/04/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit


class RefeicoesTableViewController: UITableViewController, AdicionaRefeicaoDelegate {

    var refeicoes: [Refeicao] = []
    
    override func viewDidLoad() {
        refeicoes = RefeicaoDao().recupera()
        let botaoAdicionaItem = UIBarButtonItem(title:"SALVAR", style: .plain, target: self, action: #selector(saveRe))
        //navigationItem.rightBarButtonItem = botaoAdicionaItem
        navigationItem.leftBarButtonItems = [botaoAdicionaItem]
    }
    // MARK: - UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let linha = indexPath.row

        let refeicao = refeicoes[linha]

        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = refeicao.nome

        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(mostraDetalhes(_:)))
        
        cell.addGestureRecognizer(longPress)
        
        return cell
    }
    
    @objc func mostraDetalhes(_ gesture: UILongPressGestureRecognizer){
        if gesture.state == .began {
            let celula = gesture.view as! UITableViewCell
            guard let indexPath = tableView.indexPath(for: celula) else { return }
            let refeicao = refeicoes[indexPath.row]
            
            RemoveRefeicaoViewController(controller: self).exibe(refeicao, handler: {
                alert in
                self.refeicoes.remove(at: indexPath.row)
                //RefeicaoDao().removeRefeicao(self.refeicoes)
                self.tableView.reloadData()
            })
            
        }
    }
    
    @objc func saveRe(){
        RefeicaoDao().save(self.refeicoes)
    }
    
    func Add(_ refeicao: Refeicao){ 
        refeicoes.append(refeicao)
        tableView.reloadData()
        //RefeicaoDao().save(refeicoes)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "adicionar" {
            if let viewController = segue.destination as? ViewController {
                viewController.delegate = self
            }
        }
    }
}

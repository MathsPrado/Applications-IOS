//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Andriu Felipe Coelho on 23/02/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func Add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AdicionaItensDelegate {

    
    
    
    //MARK: - Atributos
    var delegate : AdicionaRefeicaoDelegate?
//    var itens: [String] =
    var itens: [Item] = [Item(nome: "Palmito", calorias: 40.0),
                         Item(nome: "Molho de Tomate", calorias: 40.0),
                         Item(nome: "Quiejo", calorias: 40.0),
                         Item(nome: "Flango", calorias: 40.0)]
    
    var itensSelecionados: [Item] = []
    
    
    //MARK: - IBOutlets
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    @IBOutlet weak var itensTableView: UITableView?
    
    // MARK: - View life cycle
    
    override func viewDidLoad(){
        let botaoAdicionaItem = UIBarButtonItem(title:"Adicionar", style: .plain, target: self, action: #selector(adicionarItens))
        navigationItem.rightBarButtonItem = botaoAdicionaItem
    }
    
    @objc func adicionarItens(){
        let adicionarItensViewController = AdicionarItensViewController(delegate : self)
        navigationController?.pushViewController(adicionarItensViewController, animated: true)
        
    }
    
    
    func add(_ item: Item) {
        itens.append(item)
        
        if let tableView = itensTableView{
            tableView.reloadData()
        } else{
            Alerta(controller: self).exibe(titulo: "Desculpe ):", mensagem: "Não foi possível atualizar a tabela")
        }
    }
    

    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let celula = tableView.cellForRow(at: indexPath){
//
//        }
        guard let celula = tableView.cellForRow(at: indexPath) else{ return }
        
        if celula.accessoryType == .none {
            celula.accessoryType = .checkmark
            let linhaDaTabela = indexPath.row
            itensSelecionados.append(itens[linhaDaTabela])
        }
        else{
            celula.accessoryType = .none
            let item = itens[indexPath.row]
            if let position = itensSelecionados.firstIndex(of: item){
                itensSelecionados.remove(at: position)
//                print("-------")
//                for novoItem in itensSelecionados{
//                    print(novoItem.nome)
//                }
            }
        }
    }
    
    
    //MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let linhaDatabela = indexPath.row
        let item = itens[linhaDatabela]
        celula.textLabel?.text = item.nome
        return celula
    }
    

    func recuperaRefeicaoDoFormulario() -> Refeicao? {
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return nil
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return nil
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens: itensSelecionados)
        
        refeicao.itens = itensSelecionados
        return refeicao
    }
    
    //MARK: - IBActions
    @IBAction func adicionar(_ sender: Any) {
        if let refeicao = recuperaRefeicaoDoFormulario(){
            delegate?.Add(refeicao)
            navigationController?.popViewController(animated: true)
        }
        else{
            Alerta(controller: self).exibe( mensagem: "Erro ao ler dados no formulário")
        }
    }
}


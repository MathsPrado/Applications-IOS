import UIKit

var str = "Hello, playground"

//MARK: Dicionario Merge array
var alunos = [
    "Matheus": "Dev",
    "Prado": "Prog",
    "Faria":"React",
    "lima": "Fullstack"
]

var novosAlunos = [
    "Felipe": "c#",
    "Henrique": "java",
    "lima": "SWIFT"
]

//novosAlunos.forEach({
//    if !alunos.keys.contains($0.key){
//        alunos[$0.key] = $0.value
//
//    }
//})

alunos.merge(novosAlunos) { (_ , novosAlunos ) -> String in
    novosAlunos
}

print(alunos)


//MARK: dicionario Grouping
//var dicionarioDeNomes: [String: [String]] = [:]


//for aluno in alunos
//{
//    if let caracter = aluno.key.first{
//        let prefixo = String(caracter)
//        if var listaDeNomes = dicionarioDeNomes[prefixo]
//        {
//            listaDeNomes.append(aluno.key)
//            dicionarioDeNomes[prefixo] = listaDeNomes
//        }else{
//            dicionarioDeNomes[prefixo] = [aluno.key]
//        }
//    }
//}

//print(dicionarioDeNomes)


let dicionarioDeNomes = Dictionary(grouping: alunos.keys, by: { $0.prefix(1)})
print (dicionarioDeNomes)

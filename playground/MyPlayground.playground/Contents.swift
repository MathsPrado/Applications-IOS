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

print("")

let dicionarioDeNomes = Dictionary(grouping: alunos.keys, by: { $0.prefix(1)})
print (dicionarioDeNomes)

print("")

let alunosDeAlgoritmos = ["Amanda": 7, "Adriano":10, "Bianca": 6, "Felipe":10, "Matheus":10]
let alunosDeMatematica = ["Amanda": 7, "Adriano":10, "Bianca": 6, "Felipe":10, "Matheus":10]

print( alunosDeAlgoritmos == alunosDeMatematica)


//MARK: STRING

var texto = "Vamos começar a estudar as \"novidades\" de Swift!!!"

//MARK: Antiga forma
let indice = texto.index(texto.endIndex, offsetBy: -3)
let textoFormatado = texto.substring(to: indice)
print(textoFormatado);

//MARK: NEW

print(texto.filter({$0 != "!"}))

//let lista = ["Amanda", "Adriano", "Bianca" ,"Felipe" , "Matheus"]

//lista.forEach ({
//  print($0)
//})

texto.forEach({
    print($0)
})

let lista = ["Amanda", "Adriano", "Bianca" ,"Felipe" , "Matheus"]
print("-----")
print(lista.count)

let mensagem = "A lingaugem Swift é uma linguagem muito moderna e intuitiva. Estamos aprendendo as principais novidades da linguagem. Foco no SWIFITAO BY MATHEUS!! começamos com as novidades na API de dicionarios. E nessa aula, estamos aprendendo sobre strings"

print(mensagem.count)
print(mensagem)

for caracter in mensagem {
    print(caracter)
}

let novaMensagem = """
A linguagem Swift é uma linguagem muito moderna e intuitiva
    Estamos aprendendo as principais novidades da linguagem
Comecamos com as novidades de dicionario
"""
print(novaMensagem)

//Trabalhar com strings virou igual a trabalhar com array!! (=

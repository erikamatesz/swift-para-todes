// Exemplos para você utilizar no GNU nano e depois compilar seu arquivo .swift :)
// Na primeira linha, não esqueça de colocar a linha abaixo:
// import Foundation
//

// 1

print("Hello World")

// 2

func sayHelloTo(_ name: String) { 
    print("Hello, " + name)
}
var person = "Fulano"
person = "Fulana"

sayHelloTo(person)


// 3

let results = ["rock", "paper", "scissors", "lizard", "spock"]

func play() {
    let player1 = results.randomElement()
    let player2 = results.randomElement()
    print(player1! + " x " + player2!)
}

play()

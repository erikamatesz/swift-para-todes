# 1

let results = ["rock", "paper", "scissors", "lizard", "spock"]

func play() {
    let player1 = results.randomElement()
    let player2 = results.randomElement()
    print(player1! + " x " + player2!)
}

play()

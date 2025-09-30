import UIKit

import Foundation

enum Move {
    case rock, paper, scissors
}

enum Outcome {
    case tie
    case player1Wins
    case player2Wins
}

func playersInput(player1: Move, player2: Move) -> Outcome {
    guard player1 != player2 else { return .tie }
    
    switch player1 {
    case .rock:
        return player2 == .paper ? .player2Wins : .player1Wins
    case .paper:
        return player2 == .scissors ? .player2Wins : .player1Wins
    case .scissors:
        return player2 == .rock ? .player2Wins : .player1Wins
    }
    
}

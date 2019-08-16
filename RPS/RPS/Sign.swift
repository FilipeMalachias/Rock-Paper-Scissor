//
//  Sign.swift
//  RPS
//
//  Created by Filipe Malachias Resende on 2019-08-15.
//  Copyright © 2019 Malachias. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution (lowestValue: 0, highestValue: 2)
func randomSign () -> Sign
{
    let sign = randomChoice.nextInt()
    if sign == 0
    {
        return .Rock("👊")
    } else if sign == 1
    {
        return .Paper("✋🏿")
    } else
    {
        return .Scissor("✌🏻")
    }
}

enum Sign
{
    case Rock (String)
    case Paper (String)
    case Scissor (String)
}

//enum SignTest: String {
//    case Rock = "👊"; case Paper = "✋🏿"; case Scissor = "✌🏻"
//}

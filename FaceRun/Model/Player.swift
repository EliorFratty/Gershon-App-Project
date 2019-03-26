//
//  Player.swift
//  FaceRun
//
//  Created by Brian Advent on 21.06.18.
//  Copyright © 2018 Brian Advent. All rights reserved.
//

import SpriteKit

enum PlayerState:String {
    case neutral = "Neutral"
    case up = "Up"
    case down = "Down"
}

class Player: SKSpriteNode {

    var neutralImoji = "Neutral"
    var upImoji = "Up"
    var downImoji = "Down"
    
    func getImoji(state: PlayerState) -> String{
        switch state.rawValue {
        case "Neutral": return neutralImoji
        case "Up": return upImoji
        case "Down": return downImoji
            
        default:
            return ""
        }
    }
}

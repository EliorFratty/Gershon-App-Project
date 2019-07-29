//
//  Player.swift
//  FaceRun
//
//  Created by User on 24/03/2019.
//  Copyright © 2019 User. All rights reserved.
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

//
//  GameScene.swift
//  FaceRun
//
//  Created by User on 24/03/2019.
//  Copyright © 2019 User. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene{
    
    var playerNode:Player?
    var moving:Bool = false
    var them: [String]?
    
    var generator:UIImpactFeedbackGenerator!
    
    override func didMove(to view: SKView) {
        playerNode = self.childNode(withName: "player") as? Player
        
        if let player = playerNode, let  them = them{
            player.upImoji = them[0]
            player.downImoji = them[1]
            player.neutralImoji = them[2]
        }
       
        generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        
    }
    
    func updatePlayer (state:PlayerState) {
        if !moving {
            movePlayer(state: state)
        }
    }
    
    func movePlayer (state:PlayerState) {
        if let player = playerNode {
            print(player.downImoji)
            player.texture = SKTexture(imageNamed: player.getImoji(state: state))
            
            var direction:CGFloat = 0
            
            switch state {
            case .up:
                direction = 116
            case .down:
                direction = -116
            case .neutral:
                direction = 0
            }
            
            if Int(player.position.y) + Int(direction) >= -232 && Int(player.position.y) + Int(direction) <= 232 {
                
                moving = true
                
                let moveAction = SKAction.moveBy(x: 0, y: direction, duration: 0.3)
                
                let moveEndedAction = SKAction.run {
                    self.moving = false
                    if direction != 0 {
                        self.generator.impactOccurred()
                    }
                }
                
                let moveSequence = SKAction.sequence([moveAction, moveEndedAction])
                
                player.run(moveSequence)
                
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
       
    }
}


//
//  File.swift
//  FaceRun
//
//  Created by User on 26/03/2019.
//  Copyright © 2019 Brian Advent. All rights reserved.
//

import Foundation
import Firebase

class DBService {
    
    static let shared = DBService()
    private init() { }
    
    let Ref = Database.database().reference()
    let usersImoji = Database.database().reference().child("playersInTeam")
    

}

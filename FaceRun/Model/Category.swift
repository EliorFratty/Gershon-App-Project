//
//  Category.swift
//  FaceRun
//
//  Created by User on 24/03/2019.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}

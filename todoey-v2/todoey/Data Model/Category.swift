//
//  Category.swift
//  todoey
//
//  Created by Nguyen Xuan on 2/3/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = "1D9BF6"
    let items = List<Item>()
}

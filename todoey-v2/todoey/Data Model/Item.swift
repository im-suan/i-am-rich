//
//  Item.swift
//  todoey
//
//  Created by Nguyen Xuan on 2/3/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}

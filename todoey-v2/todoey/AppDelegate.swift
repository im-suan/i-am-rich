//
//  AppDelegate.swift
//  todoey
//
//  Created by Nguyen Xuan on 1/30/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        do {
            let realm = try Realm()
        } catch {
            print("Error initialisting new realm: \(error)")
        }
        
        return true
    }
}


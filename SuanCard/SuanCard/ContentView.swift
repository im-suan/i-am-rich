//
//  ContentView.swift
//  SuanCard
//
//  Created by Nguyen Xuan on 1/28/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor(red:0.90, green:0.49, blue:0.13, alpha:1.0)).edgesIgnoringSafeArea(.all)
            Text("Suan")
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

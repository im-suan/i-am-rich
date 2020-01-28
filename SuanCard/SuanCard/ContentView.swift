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
        ZStack {
            Color(UIColor(red:0.90, green:0.49, blue:0.13, alpha:1.0))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("suannest")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Suan")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("A Dreamer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+84 0123 456 789", imageName: "phone.fill")
                InfoView(text: "contact-suan@gmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().colorScheme(.light)
            ContentView().colorScheme(.dark)
        }
    }
}

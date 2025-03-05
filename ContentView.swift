//
//  ContentView.swift
//  BiT iOS Workshop
//
//  Created by Grace Odondi on 3/4/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var money: Int = 0
    @State var mpc: Int = 1
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("$\(money)")
            .font(.largeTitle)
            .fontWeight(.bold)
            
            Spacer()
            
            Button {
                money += mpc
            } label: {
                Text("🍪")
                    .font(.system(size: 300))
            }
            
            Spacer()
            
            HStack{
                Button {
                    if money >= 25 {
                        mpc += 5
                        money -= 25
                    }
                    
                } label: {
                    VStack{
                        Text("🫵🏾")
                        Text("$25")
                        Text("+$5 per click")
                    }
                    
                }
                
                Button {
                    if money >= 250 {
                        mpc += 20
                        money -= 250
                    }
                } label: {
                    VStack{
                        Text("💪🏾")
                        Text("$250")
                        Text("+$20 per click")
                    }
                }
                
                Button {
                    if money >= 2500 {
                        mpc += 50
                        money -= 2500
                    }
                } label: {
                    VStack{
                        Text("🧤")
                        Text("$2500")
                        Text("+$50 per click")
                    }
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

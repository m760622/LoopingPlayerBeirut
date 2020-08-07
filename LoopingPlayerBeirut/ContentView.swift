// https://github.com/m760622/LoopingPlayerBeirut
//  ContentView.swift
//  LoopingPlayerBeirut
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-08-04.
// https://github.com/m760622

import SwiftUI

struct ContentView: View {
    let screenWidth: CGFloat = UIScreen.main.bounds.width - 20
    
    var body: some View {
        ZStack{
            LoopingPlayer()
            VStack{
                Text("Huge explosion  Beirut 20200804 انفجار بيروت الضخم")
                    .frame(width: screenWidth)
                    .multilineTextAlignment(.center)
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.blue.opacity(0.3))
                    .clipShape(Capsule())
                Spacer()
                
            }//VStack
            .padding(.top, 35)
        }//ZStack
        .ignoresSafeArea(.all)
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

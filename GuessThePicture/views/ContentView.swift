//
//  ContentView.swift
//  GuessThePicture
//
//  Created by Rene Bults on 01/03/2023.
//

import SwiftUI


struct mainMenu: View {
    @State var isGameView = false
    
    var body: some View {
        HStack {
            VStack {
                Button {
                    isGameView.toggle()
                    
                } label: {
                    Text("Play")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 250, height: 50)
                        .background(Color.gray)
                        .cornerRadius(20)
                }
            }
            .fullScreenCover(isPresented: $isGameView) {
                GameView()
            }
            
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .border(.red)
        

    }
}

struct ContentView: View {
    
    var body: some View {
        VStack {
            mainMenu()
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

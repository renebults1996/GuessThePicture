//
//  ContentView.swift
//  GuessThePicture
//
//  Created by Rene Bults on 01/03/2023.
//

import SwiftUI


struct mainMenu: View {
    @StateObject var viewModel = MainMenuViewModel()
    
    var body: some View {
        HStack {
            VStack {
                Button {
                    viewModel.isGameView = true
                    
                    
                } label: {
                    GameButton(title: "Play", backgroundColor: .green)
                }
            }
            .fullScreenCover(isPresented: $viewModel.isGameView) {
                GameView(gameViewModel: GameViewModel())
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

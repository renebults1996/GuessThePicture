//
//  GameView.swift
//  GuessThePicture
//
//  Created by Rene Bults on 03/03/2023.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var gameViewModel: GameViewModel
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Button {
                    print("Quit")
                    mode.wrappedValue.dismiss()
                    
                } label: {
                    GameButton(title: "Quit game", backgroundColor: .red)
                }
                LoadingView()
                TextField("Your guess...", text: $gameViewModel.userGuess)
                    .multilineTextAlignment(.center)
                Button {
                    print("haiii")
                    
                } label: {
                    GameButton(title: "Guess", backgroundColor: .green)
                }
            }

        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .border(.red)
        .padding()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameViewModel: GameViewModel())
    }
}

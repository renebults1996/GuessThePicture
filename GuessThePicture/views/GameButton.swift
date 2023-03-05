//
//  GameButton.swift
//  GuessThePicture
//
//  Created by Rene Bults on 03/03/2023.
//

import SwiftUI

struct GameButton: View {
    
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .background(backgroundColor)
            .cornerRadius(20)
    }
}

// for preview functionality only
struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GameButton(title: "Play", backgroundColor: .red)
    }
}

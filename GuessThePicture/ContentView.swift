//
//  ContentView.swift
//  GuessThePicture
//
//  Created by Rene Bults on 01/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(uiImage: UIImage(named: "nike_logo.png")!).resizable()
                .scaledToFit().blur(radius: 30.0)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

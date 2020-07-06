//
//  ContentView.swift
//  SwiftUIWarCardGame
//
//  Created by JSworkstation on 2020/07/06.
//  Copyright © 2020 JSworkstation. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var intHuman: Int = 2
    @State private var intCPU: Int = 5
    @State private var imageNameHuman: String = "back"
    @State private var imageNameCPU: String = "back"
    @State private var humanScore: Int = 0
    @State private var CPUScore: Int = 0
    
    var body: some View {
        ZStack {
            background
            VStack {
                
                Spacer()
                
                title
                
                Spacer()
                
                HStack {
                    CardImageView(imgName: $imageNameHuman)
                    CardImageView(imgName: $imageNameCPU)
                }
                
                Spacer()
                
                VStack {
                    dealButton
                    resetButton
                }
                
                Spacer()
                
                HStack {
                    ScoreView(whoIs: "Player", whoScore: humanScore)
                    Spacer()
                    ScoreView(whoIs: "CPU", whoScore: CPUScore)
                }
                .foregroundColor(.white)
                
                Spacer()
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: - ContentView Extension

extension ContentView {
    var background: some View {
        Image("Background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
    
    var title: some View {
        Image("logo")
            .scaleEffect(2)
    }
    
    var dealButton: some View {
        Button(action: {
            self.intHuman = Int.random(in: 2...14)
            self.intCPU = Int.random(in: 2...14)
            
            self.imageNameHuman = "card\(self.intHuman)"
            self.imageNameCPU = "card\(self.intCPU)"
            
            if self.intHuman > self.intCPU {
                self.humanScore += 1
            } else if self.intHuman < self.intCPU {
                self.CPUScore += 1
            }
            
        }) {
            Image("dealbutton")
                .renderingMode(.original)
        }
    }
    
    var resetButton: some View {
        Button(action: {
            self.imageNameHuman = "back"
            self.imageNameCPU = "back"
            self.humanScore = 0
            self.CPUScore = 0
        }) {
            Text("RESET")
                .bold()
                .foregroundColor(.black)
                .padding(8)
                .background(Color.yellow)
                .cornerRadius(30)
        }
    }
}

//
//  ContentView.swift
//  a2-1-accessibility
//
//  Created by dmitri.kondramachine on 2023-02-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    exit(EXIT_SUCCESS)
                } label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
                .accessibilityHint(Text("Double tap to close application."))
                .accessibilityAddTraits(.isButton)
               
                Spacer()
            }
            
            Spacer()
            
            Image("Journey")
                .accessibilityHidden(true)
            
            VStack {
                Text("Build healthy new habits")
                    .font(.title)
                    .bold()
                
                Text("Discover a wide selection of programs to help you reach your health goals")
                    .font(.title2)
            }
            .accessibilityElement(children: .combine)
            
            Spacer()
            
            Divider().frame(maxWidth: .infinity)
            
            HStack {
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 48.0, height: 48.0)
                        .foregroundColor(.accentColor)
                }
                .accessibilityLabel(Text("Go next"))
                .accessibilityHint(Text("Double tap to go next."))
                .accessibilityAddTraits(.isButton)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

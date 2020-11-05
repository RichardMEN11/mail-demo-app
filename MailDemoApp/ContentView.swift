//
//  ContentView.swift
//  MailDemoApp
//
//  Created by Richard Menning on 05.11.20.
//

import SwiftUI

struct SingleMessageView: View {
    var body: some View {
        HStack {
            
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 42, height: 42)
                .foregroundColor(.gray)
            
            
            VStack(alignment: .leading) {
                HStack{
                    Text("Absender")
                        .font(Font.headline)
                    Spacer()
                    Text("2020-11-05")
                        .font(Font.subheadline.monospacedDigit())
                        .foregroundColor(.secondary)
                }
                
                Text("Betreffzeile")
                    .font(Font.subheadline)
                    .lineLimit(1)
            }
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SingleMessageView()
    }
}
